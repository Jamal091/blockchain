int PIR1 = 3;
int PIR2 = 5;
int buzzer1 = 7;
int buzzer2 = 9;

void setup()
{
  pinMode(PIR1, INPUT);
  pinMode(PIR2, INPUT);
  pinMode(buzzer1, OUTPUT);
  pinMode(buzzer2, OUTPUT);
  Serial.begin(9600);
}

void loop()
{
  if(digitalRead(PIR1) == HIGH){
  	digitalWrite(buzzer1, HIGH);
  }else
    digitalWrite(buzzer1, LOW);
  
  if(digitalRead(PIR2) == HIGH){
  	digitalWrite(buzzer2, HIGH);
  }else
    digitalWrite(buzzer2, LOW);
}