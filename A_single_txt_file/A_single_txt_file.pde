
void setup() {
  size(500, 500);
  background(255);
  noStroke();
  fill(105,210,231);  
  

  // load data from text file
  // (by default all data loading functions
  // will look in the `data` folder of the
  // current sketch )
  String data[] = loadStrings("data.txt");
 

  // loop through datapoints and draw bars
  for(int i=0; i < data.length; i++) {

    // by default the data is loaded as strings
    // (text) and so we need to convert to a number
    // using the `float` function
    float dataPoint = float(data[i]);

    // set bar width using `map` function
    float w = map(dataPoint, 0, 8, 0, width);

    // set bar height based on # data points
    float h = height/data.length;

    float y = i * h;
        
    rect(0, y, w, h-5);
  }
  
  // save sketch as PNG file in the sketch folder
  save("sketch.png");
}