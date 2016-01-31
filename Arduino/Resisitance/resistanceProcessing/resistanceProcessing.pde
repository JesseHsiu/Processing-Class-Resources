import processing.serial.*;

Serial serial;
int val;

void setup() {
	size(200, 200);
	printArray(Serial.list());
	String portName = Serial.list()[1];
	println("portName: "+portName);
	serial = new Serial(this, portName, 9600);
}

void draw()
{
  if ( serial.available() > 0) {
    val = serial.read();
  }
  background(255);
  fill(val);
  rect(0, 0, width, height);
}
