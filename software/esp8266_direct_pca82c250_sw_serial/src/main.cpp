// Used websocat to talk to this device.
// It will then send/receive serial info in SID format.
// Input via text websocket must have 0x prefix for base-16, otherwise assumed decimal.

#include <Arduino.h>
#include <math.h>
#include <WebSocketsServer.h>
#include <ESP8266WiFi.h>        // Include the Wi-Fi library
#include <string.h>
#include <stdio.h>

WebSocketsServer webSocket = WebSocketsServer(81);

const char* ssid     = "Belong7DC9C8";         // The SSID (name) of the Wi-Fi network you want to connect to
const char* password = "axk37jbtd64y";     // The password of the Wi-Fi network
// const char* ssid     = "Smallholder";         // The SSID (name) of the Wi-Fi network you want to connect to
// const char* password = "letmeinplease";     // The password of the Wi-Fi network

bool clientConnected = false;

uint8_t ignoreCharCount = 0;

void send_sid_data(byte len,byte* data)
{
  // Setup ignore char count
  ignoreCharCount = len + 2;
  
  uint16_t sum = 0;
  
  sum += len;  

  Serial.write(len);

  for(byte i = 0; i<len; i++)
  {
    Serial.write(*data);
    sum += *data;
    data = data + sizeof(byte);
  }

  sum = sum & 0b11111111;
  Serial.write(sum);
}

void parseUserInput(uint8_t * payload, size_t length)
{
  // Parse the input text payload as CSVs
  // Send this onto the serial bus via send_sid_data.
  char str[1024];

  // Load payload into str (the buffer)
  memcpy(str,payload,length);

  const char s[2] = ",";

  byte tokenIndex = 0;
  byte tokenData[1024];
  char *token;
  
  /* get the first token */
  token = strtok(str, s);

  /* walk through other tokens */
  while( token != NULL ) {
    // Only do if token != '\n'
    if(token != "\n" && token != "\0" && token != "\r"){
      // Parse token into array
      tokenData[tokenIndex++] = (byte)strtol(token, NULL, 0);
    }

    // Get next token
    token = strtok(NULL, s);
  }

  // Send data using send_sid_data
  send_sid_data(tokenIndex,tokenData);

  // Simulate a return command
  // byte dat[2] = {0x81,0x69};
  // send_sid_data(sizeof(dat) / sizeof(byte),dat);
}

void webSocketEvent(uint8_t num, WStype_t type, uint8_t * payload, size_t length) {

    switch(type) {
        case WStype_DISCONNECTED:
            //Serial.printf("[%u] Disconnected!\n", num);
            clientConnected = false;
            break;
        case WStype_CONNECTED:
            {
                IPAddress ip = webSocket.remoteIP(num);
                //Serial.printf("[%u] Connected from %d.%d.%d.%d url: %s\n", num, ip[0], ip[1], ip[2], ip[3], payload);

				        // send message to client
				        webSocket.sendTXT(num, "Connected!");
                clientConnected = true;
            }
            break;
        case WStype_TEXT:
            webSocket.sendTXT(num,"GOT");
            parseUserInput(payload,length);

            // send message to client
            // webSocket.sendTXT(num, "message here");

            // send data to all connected clients
            // webSocket.broadcastTXT("message here");
            break;
        case WStype_BIN:
            //Serial.printf("[%u] get binary length: %u\n", num, length);
            hexdump(payload, length);

            // send message to client
            // webSocket.sendBIN(num, payload, length);
            break;
		case WStype_ERROR:			
		case WStype_FRAGMENT_TEXT_START:
		case WStype_FRAGMENT_BIN_START:
		case WStype_FRAGMENT:
		case WStype_FRAGMENT_FIN:
			break;
    }

}


void setup()
{
  delay(500);
  Serial.begin(115200);
  Serial.println("");
  Serial.println("");

  WiFi.begin(ssid, password);             // Connect to the network
  Serial.print("Connecting to ");
  Serial.print(ssid); Serial.println(" ...");

  int i = 0;
  while (WiFi.status() != WL_CONNECTED) { // Wait for the Wi-Fi to connect
    delay(1000);
    Serial.print(++i); Serial.print(' ');
  }

  Serial.println('\n');
  Serial.println("Connection established!");  
  Serial.print("IP address:\t");
  Serial.println(WiFi.localIP());         // Send the IP address of the ESP8266 to the computer

  delay(1000);
  Serial.swap();
  delay(1000);

  webSocket.begin();
  webSocket.onEvent(webSocketEvent);
}


uint8_t msgIndex = 0;
char msgs[1024];

void publishSerialRead()
{
  if(msgIndex != 0)
  {
    for(int i = 0; i<msgIndex; i++)
    {
      if(ignoreCharCount == 0){
        char str[1024];
        sprintf(str,"RX: ");
        sprintf(str + strlen(str), "%02x", msgs[i]);
        webSocket.broadcastTXT(str);
      }else{
        ignoreCharCount --;
      }
    }
    msgIndex = 0;
  }
}

void loop()
{
  if(WiFi.status() == WL_CONNECTED) 
  {
    webSocket.loop();

    // Listen to stuff, if we are not writing
    if(Serial.available() > 0)
    {
      while(Serial.available() > 0)
      {
        msgs[msgIndex++] = Serial.read();
      }
    }

    if(clientConnected){
      publishSerialRead();
    }
  }
}
