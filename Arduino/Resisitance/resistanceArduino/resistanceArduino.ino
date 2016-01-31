void setup() {
	Serial.begin(9600);
}

void loop() {
	int value = analogRead(A0);
	Serial.write(value/4);
	delay(100);
}
