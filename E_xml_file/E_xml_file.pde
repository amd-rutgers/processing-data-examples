XML xml;

color early_morning_color = color(85,98,112);
color morning_color = color(78,205,196);
color afternoon_color = color(199,244,100);
color evening_color = color(255,107,107);

void setup() {
 size(500, 500);
 noStroke();
 background(255);
 
 xml = loadXML("data.xml"); 
 
 XML[] early_morning = xml.getChildren("day/early_morning");
 XML[] morning = xml.getChildren("day/morning");
 XML[] afternoon = xml.getChildren("day/afternoon");
 XML[] evening = xml.getChildren("day/evening");

 int early_morning_total = 0;
 int morning_total = 0;
 int afternoon_total = 0;
 int evening_total = 0;
 
 for(int i = 0; i<early_morning.length; i++) {
   early_morning_total += early_morning[i].getIntContent();
 }
 for(int i = 0; i<morning.length; i++) {
   morning_total += morning[i].getIntContent();
 }
 for(int i = 0; i<afternoon.length; i++) {
   afternoon_total += afternoon[i].getIntContent();
 }
 for(int i = 0; i<evening.length; i++) {
   evening_total += evening[i].getIntContent();
 }
 
 float total = early_morning_total + morning_total + afternoon_total + evening_total;
 float unit = width/total;

 pushMatrix();

  translate(0, 25);

   fill(early_morning_color);
   rect(0, 0, early_morning_total*unit, 100);
   translate(early_morning_total*unit, 0);
  
   fill(morning_color);
   rect(0, 0, morning_total*unit, 100);
   translate(morning_total*unit, 0);
  
   fill(afternoon_color);
   rect(0, 0, afternoon_total*unit, 100);
   translate(afternoon_total*unit, 0);
  
   fill(evening_color);
   rect(0, 0, evening_total*unit, 100);
   //translate(evening_total*unit, 0);

 popMatrix();
 
 XML[] days = xml.getChildren("day");

  fill(245);
  
  beginShape();
   for(int i=0; i < days.length; i++) {
     XML day = days[i];
     vertex(
       map(i, 0, days.length-1, 0, width),
       map(day.getInt("total"), 0, 6, height, height/2)
     );
   }
   vertex(width, height);
   vertex(0, height);
  endShape(CLOSE);

  noFill();
  strokeWeight(2);
  
  stroke(early_morning_color);
  drawLineChart(days, "early_morning");
  
  
  
  stroke(morning_color);
  drawLineChart(days, "morning");
    
  
  stroke(afternoon_color);
  drawLineChart(days, "afternoon");

  
  stroke(evening_color);
  drawLineChart(days, "evening");


  save("sketch.png");
}

void drawLineChart(XML[] array, String time) {
   beginShape();
   for(int i=0; i < array.length; i++) {
     float count = array[i].getChild(time).getFloatContent();
     vertex(
       map(i, 0, array.length-1, 0, width),
       map(count, 0, 6, height, height/2)
     );
   }
  endShape();  
}