// Classe Botó

class ButtonText {

  // Propietats d'un botó:
  float x, y, w, h, s;  // Posició i dimensions
  // Colors de contorn, farciment, actiu i desactiu
  color fillColor;
  color fillColorOver;
  String textBoto;  // Text
  boolean enabled;  // Abilitat / desabilitat

  // Mètode Constructor
  ButtonText(String text, float x, float y, float w, float h, float s) {
    this.textBoto = text;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.s = s;
    this.enabled = true;
    fillColor = color(0);
  }

  // Setters

  void setEnabled(boolean b) {
    this.enabled = b;
  }
  
  void setPosicio(float x){
    this.x = x;
  }

  // Dibuixa el botó
  void display() {
    pushStyle();
    noFill(); noStroke();
    rect(this.x, this.y, this.w, this.h);    // Rectangle del botó

    if (mouseOverButton()) {
      fill(fillColor);
      rect(x+15, y+s+2, w-25, 2);;      // Color quan ratolí a sobre
    }else{}
    // Text (color, alineació i mida)
    textSize(this.s);
    fill(0);
    text(textBoto, this.x + 15, this.y+s);
    popStyle();
  }

  // Indica si el cursor està sobre el botó
  boolean mouseOverButton() {
    return (mouseX >= this.x) && 
      (mouseX<=this.x + this.w) && 
      (mouseY>= this.y) && 
      (mouseY<= this.y + this.h);
  }
}
