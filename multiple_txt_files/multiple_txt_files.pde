String[] march5;
String[] march6;
String[] march7;
String[] march8;
String[] march9;
String[] march10;
String[] march11;

void setup() {
 size(500, 500); 
 background(255);
 noStroke();
 fill(0);

 march5 = loadStrings("03-05.txt");
 march6 = loadStrings("03-06.txt");
 march7 = loadStrings("03-07.txt");
 march8 = loadStrings("03-08.txt");
 march9 = loadStrings("03-09.txt");
 march10 = loadStrings("03-10.txt");
 march11 = loadStrings("03-11.txt");


 float min_input = 0;
 float max_input = 8;
 float num_columns = march5.length;
 float w = width / num_columns;
 float max_radius = w / 2;

 for(int i = 0; i < num_columns; i++) {
   
   float r1 = map(float(march5[i]), min_input, max_input, 0, max_radius);
   float x1 = i*w + max_radius;
   float y1 = max_radius;
   
   float r2 = map(float(march6[i]), min_input, max_input, 0, max_radius);
   float x2 = i*w + max_radius;
   float y2 = max_radius*3;
   
   float r3 = map(float(march7[i]), min_input, max_input, 0, max_radius);
   float x3 = i*w + max_radius;
   float y3 = max_radius*5;

   float r4 = map(float(march8[i]), min_input, max_input, 0, max_radius);
   float x4 = i*w + max_radius;
   float y4 = max_radius*7;
   
   float r5 = map(float(march9[i]), min_input, max_input, 0, max_radius);
   float x5 = i*w + max_radius;
   float y5 = max_radius*9;
   
   float r6 = map(float(march10[i]), min_input, max_input, 0, max_radius);
   float x6 = i*w + max_radius;
   float y6 = max_radius*11;
   
   float r7 = map(float(march11[i]), min_input, max_input, 0, max_radius);
   float x7 = i*w + max_radius;
   float y7 = max_radius*13;
   
   ellipse(x1, y1, r1, r1); 
   ellipse(x2, y2, r2, r2); 
   ellipse(x3, y3, r3, r3); 
   ellipse(x4, y4, r4, r4); 
   ellipse(x5, y5, r5, r5); 
   ellipse(x6, y6, r6, r6);   
   ellipse(x7, y7, r7, r7);   
   
 }
 
 save("sketch.png");
}