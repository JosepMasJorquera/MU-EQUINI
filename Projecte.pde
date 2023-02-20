// Classe Projetce

class Projectes {
  ButtonProjecte [] projectes;
  int nP = 0;
  int nF = 0;
  int nivell = 0;

  Projectes(ButtonProjecte p[]) {
    this.projectes = p;
  }

  void display() {
    pushStyle();
    for (int i = 0; i<nP; i++) {
      projectes[i].display();
    }
    popStyle();
  }

  void setNP() {
    if (nP<projectes.length) {
      nP ++;
      if (1+3*nF == nP) {
        projectes[nP-1].setPosicio(150, (600+nF*350+nivell), 360, 50);
      } else if (2+3*nF == nP) {
        projectes[nP-1].setPosicio(540, (600+nF*350+nivell), 360, 50);
      } else if (3+3*nF == nP) {
        projectes[nP-1].setPosicio(930, (600+nF*350+nivell), 360, 50);
        nF ++;
      }
    }
  }

  void setY(int c) {
    for (int i = 0; i<P.getNP(); i++) {
      projectes[i].setY(c);
    }
  }

  void setNivell (int i) {
    this.nivell = nivell+i;
  }

  int getNP() {
    return nP;
  }

  int getNF() {
    return nF;
  }

  boolean Damunt() {
    for (int i = 0; i<nP; i++) {
      if (projectes[i].mouseOverButton()) {
        NumProjecte = i;
        return true;
      }
    }
    return false;
  }
}
