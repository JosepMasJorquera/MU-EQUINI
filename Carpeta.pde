// Classe Projetce

class Carpetes {
  ButtonCarpeta [] carpetes;
  int nC = 0;
  int nF = 0;
  int nivell = 0;

  Carpetes(ButtonCarpeta c[]) {
    this.carpetes = c;
  }

  void display() {
    pushStyle();
    for (int i = 0; i<nC; i++) {
      carpetes[i].display();
    }
    popStyle();
  }

  void setNC() {
    if (nC<projectes.length) {
      nC ++;
      if (1+3*nF == nC) {
        carpetes[nC-1].setPosicio(150, (300+nF*150+nivell), 360, 100);
        carpetes[nC-1].setnC(nC);

        if (nC!=1) {
          C2.setPosicio(150);
          P.setY(150);
          P.setNivell(150);
        }
      } else if (2+3*nF == nC) {
        carpetes[nC-1].setPosicio(540, (300+nF*150+nivell), 360, 100);
        carpetes[nC-1].setnC(nC);
      } else if (3+3*nF == nC) {
        carpetes[nC-1].setPosicio(930, (300+nF*150+nivell), 360, 100);
        carpetes[nC-1].setnC(nC);
        nF ++;
      }
    }
  }
  
  void setNivell(int i){
    this.nivell = nivell+i;
  }

  int getNC() {
    return nC;
  }

  int getNF() {
    return nF;
  }

  boolean Damunt() {
    for (int i = 0; i<nC; i++) {
      if (carpetes[i].mouseOverButton()) {
        NumCarpeta = i;
        return true;
      }
    }
    return false;
  }
}
