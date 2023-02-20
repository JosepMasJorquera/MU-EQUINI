void keyPressed() {
  cercador.keyPressed(key, (int)keyCode);
  campContra.keyPressed(key, (int)keyCode);
  if (key == CODED) {
    if (keyCode == UP) {
      for (int i = 0; i<P.getNP(); i++) {
        projectes[i].setY(20);
      }
      for (int i = 0; i<C.getNC(); i++) {
        carpetes[i].setY(20);
      }
      C2.setPosicio(20);
      C1.setPosicio(20);
      C.setNivell(20);
      P.setNivell(20);
    } else if (keyCode == DOWN) {
      for (int i = 0; i<P.getNP(); i++) {
        projectes[i].setY(-20);
      }
      for (int i = 0; i<C.getNC(); i++) {
        carpetes[i].setY(-20);
      }
      C2.setPosicio(-20);
      C1.setPosicio(-20);
      C.setNivell(-20);
      P.setNivell(-20);
    }
  }
}
