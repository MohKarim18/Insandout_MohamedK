const int SENSOR = A0;

int val; 
void setup() {
  Serial.begin(9600);
}

void loop() {
  val = (analogRead(A0)/4);
  Serial.write(val);
  delay(100);
}
