// Classe Botó

class ButtonRedo {

  // Propietats d'un botó:
  float x, y, r;  // Posició i dimensions
  // Colors de contorn, farciment, actiu i desactiu
  color fillColor, strokeColor;
  color fillColorOver;
  String textBoto, text;  // Text
  boolean enabled;  // Abilitat / desabilitat

  // Mètode Constructor
  ButtonRedo(String textBoto, String text, float x, float y, float r) {
    this.textBoto = textBoto;
    this.text = text;
    this.x = x;
    this.y = y;
    this.r = r;
    this.enabled = true;
    fillColor = color(#8FC9F5);
    fillColorOver = color(#43A4EF);
    strokeColor = color(0);
  }

  // Setters

  void setEnabled(boolean b) {
    this.enabled = b;
  }
  
  void setPosicio(int i){
    this.y = y+i;
  }
  
  void setY(int i){
    this.y = i;
  }
  
  void setText(String i){
    this.text = i;
  }

  // Dibuixa el botó
  void display() {
    pushStyle();
    if (mouseOverButton()) {
      fill(fillColorOver);      // Color quan ratolí a sobre
    } else {
      fill(fillColor);          // Color actiu però ratolí fora
    }
    stroke(strokeColor); 
    strokeWeight(2);        //Color i gruixa del contorn
    circle(this.x, this.y, this.r);    // Cercle botó

    // Text (color, alineació i mida)
    fill(0); 
    textAlign(CENTER); 
    text(text, this.x-150, this.y+6);
    text(textBoto, this.x, this.y+6);
    popStyle();
  }

  // Indica si el cursor està sobre el botó
  boolean mouseOverButton() {
    return (mouseX >= this.x-r/2) && 
      (mouseX<=this.x + this.r/2) && 
      (mouseY>= this.y-r/2) && 
      (mouseY<= this.y + this.r/2);
  }
}
