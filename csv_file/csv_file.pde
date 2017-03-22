PFont font;
Table data;

void setup() {
 size(500, 500);
 background(255);
 fill(0);
 noStroke();
  
  font = loadFont("Helvetica-Bold-20.vlw");
  data = loadTable("data.csv", "header");
  
  textFont(font);
  
  float h = height/data.getRowCount();
  int columnCount = data.getColumnCount();
  
  for (TableRow row : data.rows()) {
    
    // skipping first and last column,
    // which are "Date" and "Total"
    for(int i = 1; i < columnCount-1; i++) {
      println(row.getFloat(i));
    }
    
    
    text(row.getString("Date"), 0, 20);
    translate(0, h);
  }
}