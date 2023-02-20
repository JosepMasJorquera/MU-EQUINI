// Classe Botó Projetce

class ButtonProjecte {

  // Propietats d'un botó:
  float x, y, w, h;  // Posició i dimensions

  float valors[] = new float[29];

  // Colors de contorn, farciment, actiu i desactiu
  color fillColor;
  color fillColorOver;
  String textBoto;  // Text

  // Mètode Constructor
  ButtonProjecte(String text, float v []) {
    this.valors = v;
    this.textBoto = text;
    fillColor = color(255);
    fillColorOver = color(#EBEBEB);
  }

  void setPosicio(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  void setY(int i) {
    this.y = y+i;
  }

  void setAngle(int i, float AngX, float AngY, float AngZ) {
    valors[i] = AngX;
    valors[i+1] = AngY;
    valors[i+2] = AngZ;
    println("OKAY");
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
    rect(this.x, this.y+250, this.w, this.h);    // Rectangle del botó

    // Text (color, alineació i mida)
    fill(0); 
    textAlign(CENTER); 
    text(textBoto, this.x + this.w/2, this.y + this.h/2 + 10 +250);

    // Rectangle Imatge
    fill(255);
    rect(this.x, this.y, this.w, 250);
    popStyle();
  }

  // Indica si el cursor està sobre el botó
  boolean mouseOverButton() {
    return (mouseX >= this.x) && 
      (mouseX<=this.x + this.w) && 
      (mouseY>= this.y+250) && 
      (mouseY<= this.y+250 + this.h);
  }

  // Getter
  int getValor() {
    return (int)valors[0];
  }

  float getX() {
    return x;
  }

  float getY() {
    return y;
  }

  String getText() {
    return textBoto;
  }

  float getAngle(int i) {
    return valors[i];
  }
}
