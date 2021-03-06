#include <Arduino.h>
#include <SPI.h>
#include <Wire.h>
#include <SC16IS752.h> // Dual UART interface
#include <string.h>
#include <stdio.h>

#define CS D8

SC16IS752 spiuart = SC16IS752(SC16IS750_PROTOCOL_SPI, CS);

// Due to bodged board, data goes out channel A, and comes back in channel B.

#define baudrate_A 115200
#define baudrate_B 115200
int ignoreCharCount = 0;

void send_sid_data(byte channel,byte len,byte* data)
{
  uint16_t sum;
  ignoreCharCount = len + 2;
  
  sum += len;

  spiuart.write(channel,len);  
  //Serial.print("TX: ");
  
  // Serial.print(len,HEX);
  // Serial.print(",");

  for(byte i = 0; i<len; i++)
  {
    spiuart.write(channel,*data);
    // Serial.print(*data,HEX);
    // Serial.print(",");
    sum += *data;
    data = data + sizeof(byte);
  }

  // Send the LSB of the sum.
  sum = sum & 0b11111111;
  spiuart.write(channel,sum);
  // Serial.println(sum,HEX);
}

void setup()
{
  Serial.begin(115200);
  Serial.setTimeout(50);
  Serial.println("Start UART -> SID adapter.");

  delay(1000);

  // UART to Serial Bridge Initialization
  spiuart.begin(baudrate_A,baudrate_B); //baudrate setting
  
  if (spiuart.ping() != 1)
  {
    Serial.println("Device not found");
    while (1)
      ;
  }
  else
  {
    Serial.println("Device found");
  }

  // SETUP GPIO
  for(int gpioPin = 0; gpioPin < 8; gpioPin++){
    spiuart.pinMode(gpioPin, OUTPUT);
    spiuart.digitalWrite(gpioPin, HIGH);
  }

  // Setup loopback
  spiuart.LoopbackEnable(false);
  
  spiuart.flush(SC16IS752_CHANNEL_A);
  spiuart.flush(SC16IS752_CHANNEL_B);
}

String userInput;
uint8_t inputBuf[1024];

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
  send_sid_data(SC16IS752_CHANNEL_A,tokenIndex,tokenData);
}

void loop()
{
  // Read from channel B and print to serial
  if(spiuart.available(SC16IS752_CHANNEL_B) > 0){
    while (spiuart.available(SC16IS752_CHANNEL_B) > 0)
    {
      // read the incoming byte:
      char c = spiuart.read(SC16IS752_CHANNEL_B);
      if(ignoreCharCount == 0){
        Serial.print("RX:");
        Serial.print(c,HEX);
        Serial.println("");
      }else{
        ignoreCharCount --;
      }
    }
  }

  // Check if we have stuff to read in serial
  if(Serial.available() > 0)
  {
    userInput = Serial.readStringUntil('\n');
    userInput.getBytes(inputBuf,1024);
    parseUserInput(inputBuf,userInput.length());
  }
}
