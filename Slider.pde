class Slider {

  String s = "Head";
  float x, y, w, h;
  float minV, maxV, v;

  color c;

  Slider (String s, float x, float y, float w, float h, float minV, float maxV, float val) {
    this.x = x; 
    this.y = y;
    this.w = w; 
    this.h = h;
    this.v = val; 
    this.minV = minV; 
    this.maxV = maxV;
    this.s = s;

    this.c = color(0);
  }

  void setColor(color c) {
    this.c = c;
  }
  
  void setSlider(float v){
    this.v = v;
  }

  void display() {
    pushStyle();
    fill(255); 
    strokeWeight(3);
    rect(x, y, w, h, 5);
    noStroke(); 
    fill(0);
    circle(x + map(v, minV, maxV, 0, w), y+h/2, h/2+15);
    fill(0); 
    textAlign(LEFT); 
    textSize(24);
    text(v, x + w + 5, y +h/2);
    fill(0); 
    textAlign(LEFT);
    text(s, x + 5, y -10);
    popStyle();
  }

  boolean mouseOnSlider() {
    return ((mouseX>=x) && (mouseX<=x+w) && 
      (mouseY>=y)&& (mouseY<=y+h));
  }

  void updateSlider() {
    v = map(mouseX, x, x+w, minV, maxV);
    v = constrain(v, minV, maxV);
  }
}
