
String[][] data;

void setup() {
 size(500, 500); 
 background(255);
 noStroke();
 fill(167,219,216);

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

 color[] colors = new color[5];

 colors[0] = color(85,98,112);
 colors[1] = color(78,205,196);
 colors[2] = color(199,244,100);
 colors[3] = color(255,107,107);
 colors[4] = color(196,77,88);

 for(int i = 0; i < num_columns; i++) {
   
   for(int j = 0; j < data[i].length; j++) {

     fill(colors[j]);


     float r = map(float(data[i][j]), min_input, max_input, 0, max_radius);
     float x = j*w + max_radius;
     float y = i*w + max_radius; 
     ellipse(x, y, r, r); 
   }
    
 }
 
 save("sketch.png");
  
}