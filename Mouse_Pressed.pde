void mousePressed() {
  desplegable.Pitjat();

  if (pantalla==PANTALLA.INICISESSIO) {
    campContra.isPressed();
    if (Seguent.mouseOverButton() && campContra.comprovaText()) {
      pantalla = PANTALLA.INICI;
      campContra.setText("");
      campContra.setX1((width/2)-100);
    }
  } else if (pantalla==PANTALLA.INICI) {
    cercador.isPressed();
    if (C.Damunt()) {
      C1.setText(carpetes[NumCarpeta].getText());
      C1.setY(188);
      pantalla = PANTALLA.CARPETA;
    } else if (P.Damunt()) {
      pantalla = PANTALLA.FIGURA;
    } else if (C1.mouseOverButton()) {
      C.setNC();
    } else if (C2.mouseOverButton()) {
      P.setNP();
    }
  } else if (pantalla==PANTALLA.CARPETA) {
    cercador.isPressed();
    if (P.Damunt()) {
      pantalla = PANTALLA.FIGURA;
    }
  } else if (pantalla==PANTALLA.POSES) {
    cercador.isPressed();
    if (P.Damunt()) {
      pantalla = PANTALLA.FIGURA;
    }
  }

  if (pantalla!=PANTALLA.INICISESSIO) {
    if (PP.mouseOverButton()) {
      pantalla = PANTALLA.POSES;
    } else if (M.mouseOverButton()) {
      C1.setText("Tus proyectos:");
      pantalla = PANTALLA.INICI;
    } else if (Avatar.mouseOverButton()) {
      pantalla = PANTALLA.INICISESSIO;
    }
  }

  // Comprova el click sobre la gui (sliders)
  if (BodyY.mouseOnSlider()) {
    BodyY.updateSlider();
  } else if (X.mouseOnSlider()) {
    X.updateSlider();
  } else if (Y.mouseOnSlider()) {
    Y.updateSlider();
  } else if (Z.mouseOnSlider()) {
    Z.updateSlider();
  }

  // Si pitjam sobre el select 1
  if (partCos.mouseOverSelect() && partCos.enabled) {
    if (!partCos.collapsed) {
      partCos.update();      // Actualitzar valor
    }
    partCos.toggle();        // Plegar o desplegar
  }
}
