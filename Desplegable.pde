class Desplegable {

  Button boto;
  ButtonText botoText;

  float x, y, w, h;

  boolean desplegat;

  Desplegable(float x, float y, float w, float h, Button boto, ButtonText botoText, boolean desplegat) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.boto = boto;
    this.botoText = botoText;
    this.desplegat = desplegat;
  }

  void display() {
    if (desplegat == true) {
      animacio();
      pushMatrix();
      rect(x, y, w, h);
      popMatrix();
      botoText.display();
      boto.display();
    } else {
      animacioReverse();
      rect(x, y, w, h);
      botoText.display();
      boto.display();
    }
  }

  boolean mouseOverButton() {
    return (mouseX >= this.x) && 
      (mouseX<=this.x + this.w) && 
      (mouseY>= this.y) && 
      (mouseY<= this.y + this.h);
  }

  void Pitjat() {
    if (boto.mouseOverButton() && desplegat == false) {
      this.desplegat = true;
    } else if (boto.mouseOverButton() && desplegat == true) {
      this.desplegat = false;
    }
  }

  void animacio() {
    if (x>945) {
      x-=30;
      botoText.setPosicio(x+50);
      if (x<=1360) {
        boto.setPosicio(x+20);
      }
      rect(x, y, h, w);
      boto.display();
      botoText.display();
    }
  }

  void animacioReverse() {
    if (x<1440) {
      x+=30;
      botoText.setPosicio(x+50);
      if (x<=1360) {
        boto.setPosicio(x+20);
      }
      rect(x, y, h, w);
      boto.display();
      botoText.display();
    }
  }
}
