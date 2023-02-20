void displayBody() {
  pushMatrix();
  rotateZ(-PI);
  translate(0, 0, 0);
  rotateY(radians(BodyY.v));
  scale(50);
  shape(body);

  if (partCos.getSelectedValue().equals("Cabeza")) {
    displayHead(radians(X.v), radians(Y.v), radians(Z.v));
    displayLeftArm(radians(projectes[NumProjecte].getAngle(5)), radians(projectes[NumProjecte].getAngle(6)), radians(projectes[NumProjecte].getAngle(7)));
    displayRightArm(radians(projectes[NumProjecte].getAngle(8)), radians(projectes[NumProjecte].getAngle(9)), radians(projectes[NumProjecte].getAngle(10)));
    displayLeftLeg(radians(projectes[NumProjecte].getAngle(17)), radians(projectes[NumProjecte].getAngle(18)), radians(projectes[NumProjecte].getAngle(19)));
    displayRightLeg(radians(projectes[NumProjecte].getAngle(20)), radians(projectes[NumProjecte].getAngle(21)), radians(projectes[NumProjecte].getAngle(22)));
  } else if (partCos.getSelectedValue().equals("Brazo derecho")) {
    X.setSlider(projectes[NumProjecte].getAngle(8));
    Y.setSlider(projectes[NumProjecte].getAngle(9));
    Z.setSlider(projectes[NumProjecte].getAngle(10));
    displayHead(radians(projectes[NumProjecte].getAngle(2)), radians(projectes[NumProjecte].getAngle(3)), radians(projectes[NumProjecte].getAngle(4)));
    displayLeftArm(radians(projectes[NumProjecte].getAngle(5)), radians(projectes[NumProjecte].getAngle(6)), radians(projectes[NumProjecte].getAngle(7)));
    displayRightArm(radians(X.v), radians(Y.v), radians(Z.v));
    displayLeftLeg(radians(projectes[NumProjecte].getAngle(17)), radians(projectes[NumProjecte].getAngle(18)), radians(projectes[NumProjecte].getAngle(19)));
    displayRightLeg(radians(projectes[NumProjecte].getAngle(20)), radians(projectes[NumProjecte].getAngle(21)), radians(projectes[NumProjecte].getAngle(22)));
  } else if (partCos.getSelectedValue().equals("Brazo izquierdo")) {
    X.setSlider(projectes[NumProjecte].getAngle(5));
    Y.setSlider(projectes[NumProjecte].getAngle(6));
    Z.setSlider(projectes[NumProjecte].getAngle(7));
    displayHead(radians(projectes[NumProjecte].getAngle(2)), radians(projectes[NumProjecte].getAngle(3)), radians(projectes[NumProjecte].getAngle(4)));
    displayLeftArm(radians(X.v), radians(Y.v), radians(Z.v));
    displayRightArm(radians(projectes[NumProjecte].getAngle(8)), radians(projectes[NumProjecte].getAngle(9)), radians(projectes[NumProjecte].getAngle(10)));
    displayLeftLeg(radians(projectes[NumProjecte].getAngle(17)), radians(projectes[NumProjecte].getAngle(18)), radians(projectes[NumProjecte].getAngle(19)));
    displayRightLeg(radians(projectes[NumProjecte].getAngle(20)), radians(projectes[NumProjecte].getAngle(21)), radians(projectes[NumProjecte].getAngle(22)));
  } else if (partCos.getSelectedValue().equals("Pierna derecha")) {
    X.setSlider(projectes[NumProjecte].getAngle(20));
    Y.setSlider(projectes[NumProjecte].getAngle(21));
    Z.setSlider(projectes[NumProjecte].getAngle(22));
    displayHead(radians(projectes[NumProjecte].getAngle(2)), radians(projectes[NumProjecte].getAngle(3)), radians(projectes[NumProjecte].getAngle(4)));
    displayLeftArm(radians(projectes[NumProjecte].getAngle(5)), radians(projectes[NumProjecte].getAngle(6)), radians(projectes[NumProjecte].getAngle(7)));
    displayRightArm(radians(projectes[NumProjecte].getAngle(8)), radians(projectes[NumProjecte].getAngle(9)), radians(projectes[NumProjecte].getAngle(10)));
    displayLeftLeg(radians(projectes[NumProjecte].getAngle(17)), radians(projectes[NumProjecte].getAngle(18)), radians(projectes[NumProjecte].getAngle(19)));
    displayRightLeg(radians(X.v), radians(Y.v), radians(Z.v));
  } else if (partCos.getSelectedValue().equals("Pierna izquierda")) {
    X.setSlider(projectes[NumProjecte].getAngle(17));
    Y.setSlider(projectes[NumProjecte].getAngle(18));
    Z.setSlider(projectes[NumProjecte].getAngle(19));
    displayHead(radians(projectes[NumProjecte].getAngle(2)), radians(projectes[NumProjecte].getAngle(3)), radians(projectes[NumProjecte].getAngle(4)));
    displayLeftArm(radians(projectes[NumProjecte].getAngle(5)), radians(projectes[NumProjecte].getAngle(6)), radians(projectes[NumProjecte].getAngle(7)));
    displayRightArm(radians(projectes[NumProjecte].getAngle(8)), radians(projectes[NumProjecte].getAngle(9)), radians(projectes[NumProjecte].getAngle(10)));
    displayLeftLeg(radians(X.v), radians(Y.v), radians(Z.v));
    displayRightLeg(radians(projectes[NumProjecte].getAngle(20)), radians(projectes[NumProjecte].getAngle(21)), radians(projectes[NumProjecte].getAngle(22)));
  }
  popMatrix();
}

void displayHead(float angX, float angY, float angZ) {
  pushMatrix();
  translate(0, 2.5, 0);
  rotateX(angX);
  rotateY(angY);
  rotateZ(angZ);
  projectes[NumProjecte].setAngle(2, angX, angY, angZ);
  shape(head);
  popMatrix();
}

void displayLeftArm(float angX, float angY, float angZ) {
  pushMatrix();
  translate(+1.1, 1.75, 0);
  rotateX(angX);
  rotateY(angY);
  rotateZ(angZ);
  projectes[NumProjecte].setAngle(5, angX, angY, angZ);
  shape(arm);
  displayLeftHand(0, 0, 0);
  popMatrix();
}

void displayLeftHand(float angX, float angY, float angZ) {
  pushMatrix();
  translate(0, -2.65, 0);
  rotateX(angX);
  rotateY(angY);
  rotateZ(angZ);
  projectes[NumProjecte].setAngle(11, angX, angY, angZ);
  shape(hand);
  popMatrix();
}


void displayRightArm(float angX, float angY, float angZ) {
  pushMatrix();
  translate(-1.1, 1.75, 0);
  rotateX(angX);
  rotateY(angY);
  rotateZ(angZ);
  projectes[NumProjecte].setAngle(8, angX, angY, angZ);
  shape(arm);
  displayRightHand(0, 0, 0);
  popMatrix();
}

void displayRightHand(float angX, float angY, float angZ) {
  pushMatrix();
  translate(0, -2.65, 0);
  rotateX(angX);
  rotateY(angY);
  rotateZ(angZ);
  projectes[NumProjecte].setAngle(14, angX, angY, angZ);
  shape(hand);
  popMatrix();
}


void displayLeftLeg(float angX, float angY, float angZ) {
  pushMatrix();
  translate(+0.5, -1.85, 0);
  rotateX(angX);
  rotateY(angY);
  rotateZ(angZ);
  projectes[NumProjecte].setAngle(17, angX, angY, angZ);
  shape(leg);
  displayLeftFoot(0, 0, 0);
  popMatrix();
}

void displayLeftFoot(float angX, float angY, float angZ) {
  pushMatrix();
  translate(0, -3.5, 0);
  rotateX(angX);
  rotateY(angY);
  rotateZ(angZ);
  projectes[NumProjecte].setAngle(23, angX, angY, angZ);
  shape(foot);
  popMatrix();
}



void displayRightLeg(float angX, float angY, float angZ) {
  pushMatrix();
  translate(-0.5, -1.85, 0);
  rotateX(angX);
  rotateY(angY);
  rotateZ(angZ);
  projectes[NumProjecte].setAngle(20, angX, angY, angZ);
  shape(leg);
  displayRightFoot(0, 0, 0);
  popMatrix();
}

void displayRightFoot(float angX, float angY, float angZ) {
  pushMatrix();
  translate(0, -3.5, 0);
  rotateX(angX);
  rotateY(angY);
  rotateZ(angZ);
  projectes[NumProjecte].setAngle(26, angX, angY, angZ);
  shape(foot);
  popMatrix();
}
