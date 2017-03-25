XML xml;

color c1 = color(255, 0, 255);
color c2 = color(0, 255, 255);
color c3 = color(255, 255, 0);
color c4 = color(255, 0, 0);

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

   fill(c1);
   rect(0, 0, early_morning_total*unit, 100);
   translate(early_morning_total*unit, 0);
  
   fill(c2);
   rect(0, 0, morning_total*unit, 100);
   translate(morning_total*unit, 0);
  
   fill(c3);
   rect(0, 0, afternoon_total*unit, 100);
   translate(afternoon_total*unit, 0);
  
   fill(c4);
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
  
  stroke(c1);
  drawLineChart(days, "early_morning");
  
  
  
  stroke(c2);
  drawLineChart(days, "morning");
    
  
  stroke(c3);
  drawLineChart(days, "afternoon");

  
  stroke(c4);
  drawLineChart(days, "evening");

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