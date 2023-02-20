enum PANTALLA {
  INICISESSIO, INICI, CARPETA, POSES, FIGURA
};

PANTALLA pantalla = PANTALLA.INICI;

void canviarPantalla() {
  switch(pantalla) {
  case INICISESSIO:
    pantallaIniciSessio();
    break;
  case INICI:
    pantallaInici();
    break;
  case CARPETA:
    pantallaCarpeta();
    break;
  case POSES:
    pantallaPosesPredeterminades();
    break;
  case FIGURA:
    pantallaFigura();
    break;
  }
}

void pantallaInici() {
  textSize(25);
  // Rectangle banner
  pushStyle();
  fill(255);
  rect(0, 0, bannerWidth, bannerHeight);
  popStyle();

  // Botó text MUÑEQUINI
  M.display();

  pushMatrix();
  translate(0, 0, -5);
  C.display();

  P.display();

  // Cercle +
  C1.display();
  C2.display();
  popMatrix();

  // Cercador
  cercador.display();

  // Boto avatar
  Avatar.display();

  //Desplegable
  desplegable.display();
}

void pantallaCarpeta() {
  textSize(25);

  // Rectangle banner
  rect(0, 0, bannerWidth, bannerHeight);

  M.display();

  pushMatrix();
  translate(0, 0, -5);
  P.display();
  // Cercle +
  C1.display();
  popMatrix();

  // Cercador
  cercador.display();

  // Boto avatar
  Avatar.display();

  //Desplegable
  desplegable.display();
}

void pantallaPosesPredeterminades() {
  textSize(25);

  // Rectangle banner
  rect(0, 0, bannerWidth, bannerHeight);

  M.display();

  pushStyle();
  fill(0);
  // text carpetes
  text("Postures predeterminades", 100, 200);
  popStyle();

  // Rectangle nom projectes
  pushMatrix();
  translate(0, 0, -5);
  P.display();
  popMatrix();

  // Cercador
  cercador.display();

  // Boto avatar
  Avatar.display();

  //Desplegable
  desplegable.display();
}

void pantallaFigura() {
  fill(255);
  textSize(25);

  // Rectangle banner
  rect(0, 0, bannerWidth, bannerHeight);

  // Boto avatar
  Avatar.display();

  // Botó text MUÑEQUINI
  M.display();

  // Text Projecte
  pushStyle();
  textAlign(CENTER);
  fill(0);
  text(projectes[NumProjecte].getText(), width/2, bannerHeight/2+10);
  popStyle();

  // Mostra select
  partCos.display();

  X.display();
  Y.display();
  Z.display();
  BodyY.display();

  // Mostra el maniquí
  pushMatrix();
  smooth(); 
  frameRate(30);
  translate(width/2, height/2.5, -50);
  sphere(10);
  displayBody();
  popMatrix();

  // Mostra select
  pushMatrix();
  translate(0,0,1);
  partCos.display();
  popMatrix();

  // Sliders
  X.display();
  Y.display();
  Z.display();
  BodyY.display();
}

void pantallaIniciSessio() {

  // Dibuixa els altres elements
  IniciSessio();

  // Textfield Contraseña
  campContra.display();

  // Boto per continuar
  Seguent.display();
}
