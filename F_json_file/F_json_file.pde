JSONArray days;
color early_morning_color = color(105,210,231);
color morning_color = color(167,219,216);
color afternoon_color = color(224,228,204);
color evening_color = color(243,134,48);

void setup() {
 size(500, 500);
 noStroke();
 background(255);
 
 days = loadJSONArray("data.json"); 
 
 int early_morning_total = 0;
 int morning_total = 0;
 int afternoon_total = 0;
 int evening_total = 0;
 int total = 0;
 
 int[] early_morning_values = new int[days.size()];
 int[] morning_values = new int[days.size()];
 int[] afternoon_values = new int[days.size()];
 int[] evening_values = new int[days.size()];

 for(int i = 0; i < days.size(); i++) {
   JSONObject day = days.getJSONObject(i);
   
   int early_morning = day.getInt("early_morning");
   int morning = day.getInt("morning");
   int afternoon = day.getInt("afternoon");
   int evening = day.getInt("evening");

   
   early_morning_total += early_morning;
   early_morning_values[i] = early_morning;
   
   morning_total += morning;
   morning_values[i] = morning;

   afternoon_total += afternoon;
   afternoon_values[i] = afternoon;

   evening_total += evening;
   evening_values[i] = evening;
   
   total += day.getInt("total");
 }
 
 pushMatrix();

  translate(0, 25);

   fill(early_morning_color);
   float early_morning_width = map(early_morning_total, 0, total, 0, width);
   rect(0, 0, early_morning_width, 100);
   translate(early_morning_width, 0);
  
   fill(morning_color);
   float morning_width = map(morning_total, 0, total, 0, width);
   rect(0, 0, morning_width, 100);
   translate(morning_width, 0);
  
   fill(afternoon_color);
   float afternoon_width = map(afternoon_total, 0, total, 0, width);
   rect(0, 0, afternoon_width, 100);
   translate(afternoon_width, 0);
  
   fill(evening_color);
   float evening_width = map(afternoon_total, 0, total, 0, width);
   rect(0, 0, evening_width, 100);

 popMatrix();

  fill(245);
  
  beginShape();
   for(int i=0; i < days.size(); i++) {
     JSONObject day = days.getJSONObject(i);
     vertex(
       map(i, 0, days.size()-1, 0, width),
       map(day.getFloat("total"), 0, 6, height, height/2)
     );
   }
   vertex(width, height);
   vertex(0, height);
  endShape(CLOSE);

  noFill();
  strokeWeight(2);
  
  stroke(early_morning_color);
  drawLineChart(early_morning_values);
  
  stroke(morning_color);
  drawLineChart(morning_values);
  
  stroke(afternoon_color);
  drawLineChart(afternoon_values);
  
  stroke(evening_color);
  drawLineChart(evening_values);


  save("sketch.png");
}

void drawLineChart(int[] array) {
   beginShape();
   for(int i=0; i < array.length; i++) {
     float count = array[i];
     vertex(
       map(i, 0, array.length-1, 0, width),
       map(count, 0, 6, height, height/2)
     );
   }
  endShape();  
}