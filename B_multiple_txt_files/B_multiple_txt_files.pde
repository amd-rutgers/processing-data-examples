
// declaring a string array
// for each day in the dataset
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
 fill(243,134,48);

 // load text from each day into a
 // separate array of strings
 march5 = loadStrings("03-05.txt");
 march6 = loadStrings("03-06.txt");
 march7 = loadStrings("03-07.txt");
 march8 = loadStrings("03-08.txt");
 march9 = loadStrings("03-09.txt");
 march10 = loadStrings("03-10.txt");
 march11 = loadStrings("03-11.txt");

 // set input min / max
 float min_input = 0;
 float max_input = 8;

 // get the number of columns in data
 float num_columns = march5.length;

 // we're going to create a grid of
 // circles, set the width here
 float w = width / num_columns;

 // set the max radius for each circle
 float max_radius = w / 2;

 // loop through all arrays and draw individual
 // circles based on data
 for(int i = 0; i < num_columns; i++) {
   
  // set variables first

   // day 1
   float r1 = map(float(march5[i]), min_input, max_input, 0, max_radius);
   float x1 = i*w + max_radius;
   float y1 = max_radius;
   
   // day 2
   float r2 = map(float(march6[i]), min_input, max_input, 0, max_radius);
   float x2 = i*w + max_radius;
   float y2 = max_radius*3;
   
   // day 3
   float r3 = map(float(march7[i]), min_input, max_input, 0, max_radius);
   float x3 = i*w + max_radius;
   float y3 = max_radius*5;

   // day 4
   float r4 = map(float(march8[i]), min_input, max_input, 0, max_radius);
   float x4 = i*w + max_radius;
   float y4 = max_radius*7;
   
   // day 5
   float r5 = map(float(march9[i]), min_input, max_input, 0, max_radius);
   float x5 = i*w + max_radius;
   float y5 = max_radius*9;
   
   // day 6
   float r6 = map(float(march10[i]), min_input, max_input, 0, max_radius);
   float x6 = i*w + max_radius;
   float y6 = max_radius*11;
   
   // day 7
   float r7 = map(float(march11[i]), min_input, max_input, 0, max_radius);
   float x7 = i*w + max_radius;
   float y7 = max_radius*13;
   
   // now draw elipses for each day

   ellipse(x1, y1, r1, r1); 
   ellipse(x2, y2, r2, r2); 
   ellipse(x3, y3, r3, r3); 
   ellipse(x4, y4, r4, r4); 
   ellipse(x5, y5, r5, r5); 
   ellipse(x6, y6, r6, r6);   
   ellipse(x7, y7, r7, r7);   
   
 }
  // save sketch as PNG file in the sketch folder 
  save("sketch.png");
}