
const int led1Pin = 12; 
const int led2Pin = 8;  

int led1State = LOW;
int led2State = LOW;

unsigned long previousMillis1 = 0;
unsigned long previousMillis2 = 0;

const long intervalLED1 = 500;  
const long intervalLED2 = 1000; 

void setup() {
  pinMode(led1Pin, OUTPUT);
  pinMode(led2Pin, OUTPUT);
}

void loop() {
  unsigned long currentMillis = millis();

  if (currentMillis - previousMillis1 >= intervalLED1) {
    previousMillis1 = currentMillis;
    led1State = (led1State == LOW) ? HIGH : LOW;
    digitalWrite(led1Pin, led1State);
  }

  if (currentMillis - previousMillis2 >= intervalLED2) {
    previousMillis2 = currentMillis;
    led2State = (led2State == LOW) ? HIGH : LOW;
    digitalWrite(led2Pin, led2State);
  }
}