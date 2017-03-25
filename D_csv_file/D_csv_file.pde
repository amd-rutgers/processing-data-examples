PFont font;
Table data;

int DOT_SIZE = 50;

color c1 = color(85,98,112);
color c2 = color(78,205,196);
color c3 = color(199,244,100);
color c4 = color(255,107,107);

void setup() {
 size(500, 500);
 background(255);
 fill(0);
 noStroke();
  
  data = loadTable("data.csv", "header");
    
  // row height
  float h = height/data.getRowCount();
  
  // iterate through rows in CSV file
  for (TableRow row : data.rows()) {
 
    int early_morning = row.getInt("12am-6am");
    int morning = row.getInt("6am-12pm");
    int afternoon = row.getInt("12pm-6pm");
    int evening = row.getInt("6pm-12am");

    
    pushMatrix();
    
      // draw dots for early morning
      fill(c1);
      for(int i=0; i<early_morning; i++) {
        ellipse(DOT_SIZE/2, DOT_SIZE/2, DOT_SIZE, DOT_SIZE); 
        translate(DOT_SIZE, 0);
      }
      
      // draw dots for morning
      fill(c2);
      for(int i=0; i<morning; i++) {
        ellipse(DOT_SIZE/2, DOT_SIZE/2, DOT_SIZE, DOT_SIZE); 
        translate(DOT_SIZE, 0);
      }
      
      // draw dots for afternoon
      fill(c3);
      for(int i=0; i<afternoon; i++) {
        ellipse(DOT_SIZE/2, DOT_SIZE/2, DOT_SIZE, DOT_SIZE); 
        translate(DOT_SIZE, 0);
      }
      
      // draw dots for evening
      fill(c4);
      for(int i=0; i<evening; i++) {
        ellipse(DOT_SIZE/2, DOT_SIZE/2, DOT_SIZE, DOT_SIZE); 
        translate(DOT_SIZE, 0);
      }
    popMatrix();
    
    // move to next row
    translate(0, h);
  }
  
  
  save("sketch.png");
}