int NumCarpeta;
int NumProjecte;
// Projectes
Projectes P;
ButtonProjecte[] projectes = new ButtonProjecte[100];
float valorsP[] = new float[29];
// Carpetes
Carpetes C;
ButtonCarpeta[] carpetes = new ButtonCarpeta[100];
float valorsC[] = new float[3];
// Botó desplegable i botó següent
Button Desp, Seguent;
// Botó redó i avatar
ButtonRedo C1, C2, Avatar;
// Botons text
ButtonText M, PP;
// Txt fiels
TextField cercador, campContra;
// Desplegable
Desplegable desplegable;
Select partCos;
String [] partsCos = {"Cabeza", "Brazo derecho", "Brazo izquierdo", "Manos", "Pierna derecha", "Pierna izquierda", "Pies"};
String s1;
// Models 3D
PShape body, head, arm, leg, foot, hand;
// Sliders
Slider BodyY, X, Y, Z;
// Contra
String contra = "1234";
// Altura y anchura Banner
int bannerHeight = 75, bannerWidth  = 1440;

void setGUI() {
  setProjectes();
  setCarpetes();
  setBotons();
  setBotonsRedons();
  setBotonsText();
  setTextFields();
  setDesplegables();
  setCos();
  setSliders();
  setSelect();
}

void setProjectes() {
  for (int i = 0; i<valorsP.length; i++) {
    valorsP[i] = 0;
  }
  for (int i = 0; i<100; i++) {
    projectes[i] = new ButtonProjecte("PROYECTO " + (i+1), valorsP);
  }
  P = new Projectes(projectes);
}

void setCarpetes() {
  for (int i = 0; i<100; i++) {
    carpetes[i] = new ButtonCarpeta("CARPETA " + (i+1), 0);
  }
  C = new Carpetes(carpetes);
}

void setBotons() {
  Desp = new Button("-", 1380, 90, 40, 40, 0, 20);
  Seguent = new Button("Següent", (width/2)-100, (height/2)+50, 200, 25, 0, 15);
}

void setBotonsRedons() {
  C1 = new ButtonRedo("+", "Tus carpetas:", 350, 188, 75);
  C2 = new ButtonRedo("+", "Tus proyectos:", 350, 488, 75);
  Avatar = new ButtonRedo("J", "", width-190, bannerHeight/2, 40);
}

void setBotonsText() {
  M = new ButtonText("MUÑEQUINI", 100, 12, 250, 50, 40);
  PP = new ButtonText("Postures Predeterminades", width, 250, 315, 25, 20);
}

void setTextFields() {
  cercador = new TextField((width/2)-300, 20, 600, 35, 50);
  campContra = new TextField((width/2)-100, (height/2), 200, 25, 0);
}

void setDesplegables() {
  desplegable = new Desplegable(width, bannerHeight, width, height, Desp, PP, false);
}

void IniciSessio() {
  // Rectangle
  rect((width/2)-200, (height/2)-300, 400, 600);

  // Text MUÑEQUINI
  pushStyle();
  fill(0);
  text("MUÑEQUINI", (width/2)-125, (height/2)-200);
  popStyle();

  // Usuari: admin
  pushStyle();
  textSize(19);
  fill(0);
  text("Usuari: Administrador", (width/2)-100, (height/2)-50);
  popStyle();

  // Cercle Ususari
  circle(width/2, (height/2)-125, 50);
}

void setSliders() {
  BodyY = new Slider("Body Y", 100, 400, 300, 5, 0, 360, 0);

  X  = new Slider("Eje X", 100, 500, 300, 5, 0, 360, 0);
  Y  = new Slider("Eje Y", 100, 600, 300, 5, 0, 360, 0);
  Z  = new Slider("Eje Z", 100, 700, 300, 5, 0, 360, 0);
}

void setSelect() {
  partCos = new Select(partsCos, 100, 125, 300, 25);
}

void setCos() {
  // Carrega els models 3D
  body = loadShape("body.obj");
  head = loadShape("head.obj");
  arm = loadShape("arm.obj");
  leg = loadShape("leg.obj");
  foot = loadShape("foot.obj");
  hand = loadShape("hand.obj");
}
