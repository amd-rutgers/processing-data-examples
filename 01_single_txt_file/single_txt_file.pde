
void setup() {
  size(500, 500);
  background(255);
  noStroke();
  fill(0);  
   
  String data[] = loadStrings("data.txt");
 
  for(int i=0; i < data.length; i++) {
    float dataPoint = float(data[i]);
    float w = map(dataPoint, 0, 8, 0, width);
    float h = height/data.length;
    float y = i * h;
        
    rect(0, y, w, h-5);
  }
  
  save("sketch.png");
}