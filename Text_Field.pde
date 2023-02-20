// Component Camp de Text

class TextField {

  // Propietats del camp de text
  float x, y, h, w, r, x1;

  // Colors
  color bgColor = color(255);
  color fgColor = color(0, 0, 0);
  color selectedColor = color(230);
  color borderColor = color(30, 30, 30);
  int borderWeight = 1;

  // Text del camp
  String text = "";
  int textLength = 0;
  int textSize = 18;

  boolean selected = false;
  boolean correctContra = false;

  // Constructor
  TextField(float x, float y, float w, float h, float r) {
    this.x = x; 
    this.y = y; 
    this.w = w; 
    this.h = h; 
    this.r = r;
    this.x1 = x;
  }

  // Dibuixa el Camp de Text
  void display() {
    pushStyle();
    pushMatrix();
    if (selected) {
      fill(selectedColor);
    } else {
      fill(bgColor);
    }

    strokeWeight(borderWeight);
    stroke(borderColor);
    rect(x, y, w, h, r);

    fill(fgColor);
    textSize(textSize);
    text(text, x+r/4+5, y + h/2 + textSize/2);

    if (selected) {
      linia();
    }

    popMatrix();
    popStyle();
  }

  // Afegeix, lleva el text que es tecleja
  void keyPressed(char key, int keyCode) {
    if (selected) {
      if (keyCode == (int)BACKSPACE) {
        removeText();
      } else if (keyCode == 32) {
        addText(' '); // SPACE
      } else {

        boolean isKeyCapitalLetter = (key >= 'A' && key <= 'Z');
        boolean isKeySmallLetter = (key >= 'a' && key <= 'z');
        boolean isKeyNumber = (key >= '0' && key <= '9');

        if (isKeyCapitalLetter || isKeySmallLetter || isKeyNumber) {
          addText(key);
        }
      }
    }
  }

  // Afegeix la lletra c al final del text
  void addText(char c) {
    if (textWidth(this.text + c) < w) {
      x1 += textSize/2 +2;
      this.text += c;
      textLength++;
    }
  }

  // Lleva la darrera lletra del text
  void removeText() {
    if (textLength - 1 >= 0) {
      x1 -= textSize/2 + 2;
      text = text.substring(0, textLength - 1);
      textLength--;
    }
  }

  // Indica si el ratolí està sobre el camp de text
  boolean mouseOverTextField() {
    if (mouseX >= this.x && mouseX <= this.x + this.w && mouseY >= this.y && mouseY <= this.y + this.h) {
      return true;
    }
    return false;
  }

  // Selecciona el camp de text si pitjam a sobre
  // Deselecciona el camp de text si pitjam a fora
  void isPressed() {
    if (mouseOverTextField()) {
      this.selected = true;
    } else {
      this.selected = false;
    }
  }

  // Getters
  String getText() {
    return this.text;
  }

  // Comprovar si el text és igual que la contrasenya
  boolean comprovaText() {
    return(this.text.equals(contra));
  }

  void setText(String x) {
    this.text = x;
  }

  void setX1(float x) {
    this.x1 = x;
  }

  // Línia cercador
  void linia() {
    if (frameCount % 30 == 0 || frameCount % 30 == 1 || frameCount % 30 == 2 || frameCount % 30 == 3 || frameCount % 30 == 4 || frameCount % 30 == 5 || frameCount % 30 == 6 || frameCount % 30 == 7 || frameCount % 30 == 8 || frameCount % 30 == 9 || frameCount % 30 == 10) {
      rect(x1+r/4+5, y+4, 1, h-8);
    }
  }
}
