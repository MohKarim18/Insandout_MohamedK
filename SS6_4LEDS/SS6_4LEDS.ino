//MohamedKMohamed

int LED1 = 13;
int LED2 = 12;
int LED3 = 11; 
int LED4 = 10; 
int ButtonValue = 0;
int Button = 8;

void setup() {
   pinMode(LED1, OUTPUT);
   pinMode(LED2, OUTPUT);
   pinMode(LED3, OUTPUT);
   pinMode(LED4, OUTPUT);
   pinMode(Button, INPUT);
}


void loop() {
  ButtonValue = digitalRead(Button);
  if(ButtonValue!=0){
  digitalWrite(LED1, HIGH);    
  delay(20);                  
  digitalWrite(LED2, HIGH);    
  delay(20);                  
  digitalWrite(LED3, HIGH);   
  delay(200);
  digitalWrite(LED4, HIGH);   
  delay(200);
  }
  else{                 
  digitalWrite(LED1, LOW);     
  delay(300);                  
  digitalWrite(LED2, LOW);     
  delay(300);                  
  digitalWrite(LED3, LOW);     
  delay(300);            
  digitalWrite(LED4, LOW); 
  delay(200); 
  }

}
