
String[][] data;

void setup() {
 size(500, 500); 
 background(255);
 noStroke();
 fill(250,105,0);

 String[][] data = new String[7][];

 data[0] = loadStrings("03-05.txt");
 data[1] = loadStrings("03-06.txt");
 data[2] = loadStrings("03-07.txt");
 data[3] = loadStrings("03-08.txt");
 data[4] = loadStrings("03-09.txt");
 data[5] = loadStrings("03-10.txt");
 data[6] = loadStrings("03-11.txt");

 float min_input = 0;
 float max_input = 8;
 float num_columns = data[0].length;
 float w = width / num_columns;
 float max_radius = w / 2;


 for(int i = 0; i < num_columns; i++) {
   
   for(int j = 0; j < data[i].length; j++) {
     float r = map(float(data[i][j]), min_input, max_input, 0, max_radius);
     float x = j*w + max_radius;
     float y = i*w + max_radius; 
     ellipse(x, y, r, r); 
   }
    
 }
 
 save("sketch.png");
  
}