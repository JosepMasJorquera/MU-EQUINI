// Classe Botó

class ButtonCarpeta {

  // Propietats d'un botó:
  float x, y, w, h;  // Posició i dimensions

  int numCarpeta;

  // Colors de contorn, farciment, actiu i desactiu
  color fillColor;
  color fillColorOver;
  String textBoto;  // Text

  // Mètode Constructor
  ButtonCarpeta(String text, int c) {
    this.numCarpeta = c;
    this.textBoto = text;
    fillColor = color(255);
    fillColorOver = color(#EBEBEB);
  }

  // Setters
  void setPosicio(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  void setY(int i) {
    this.y = this.y+i;
  }
  
  void setnC(int i){
    numCarpeta = i;
  }

  // Dibuixa el botó
  void display() {
    pushStyle();
    if (mouseOverButton()) {
      fill(fillColorOver);      // Color quan ratolí a sobre
    } else {
      fill(fillColor);          // Color actiu però ratolí fora
    }
    strokeWeight(1);        //Color i gruixa del contorn
    rect(this.x, this.y, this.w, this.h, 20);    // Rectangle del botó

    // Text (color, alineació i mida)
    fill(0);
    textAlign(CENTER);
    textSize(20);
    text(textBoto, this.x + this.w/2, this.y + this.h/2 +5);
    popStyle();
  }

  // Indica si el cursor està sobre el botó
  boolean mouseOverButton() {
    return (mouseX >= this.x) && 
      (mouseX<=this.x + this.w) && 
      (mouseY>= this.y) && 
      (mouseY<= this.y + this.h);
  }
  
  // Getter
  int getNumCarpeta() {
    return numCarpeta;
  }
  
  String getText(){
    return textBoto;
  }

  float getX() {
    return x;
  }

  float getY() {
    return y;
  }
}
