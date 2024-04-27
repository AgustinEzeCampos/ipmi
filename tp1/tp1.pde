PImage img;
PShape dog;

void setup() {
  size(800, 400);
  background(200, 225, 235); // Fondo celeste grisáceo para un día nublado

  // Sol
  fill(255, 223, 0);
  ellipse(700, 50, 100, 100);

  // Piso gris que parezca una calle
  fill(128, 128, 128); // Color gris para el piso
  rect(0, 320, 800, 80); // Piso gris

  dog = createShape(GROUP);

  // Cuerpo del perro
  PShape body = createShape(RECT, 500, 240, 150, 75);
  body.setFill(color(60, 30, 15)); // Color marrón oscuro casi negro
  dog.addChild(body);

  // Cabeza del perro
  PShape head = createShape(RECT, 575, 210, 50, 50);
  head.setFill(color(60, 30, 15)); // Color marrón oscuro casi negro
  dog.addChild(head);

  // Orejas del perro
  PShape earLeft = createShape(TRIANGLE, 575, 210, 555, 190, 575, 200);
  earLeft.setFill(color(60, 30, 15)); // Color marrón oscuro casi negro
  dog.addChild(earLeft);

  PShape earRight = createShape(TRIANGLE, 625, 210, 625, 200, 645, 190);
  earRight.setFill(color(60, 30, 15)); // Color marrón oscuro casi negro
  dog.addChild(earRight);

  // Ojos del perro
  PShape eyeLeft = createShape(ELLIPSE, 585, 220, 5, 5);
  eyeLeft.setFill(color(0)); // Color negro
  dog.addChild(eyeLeft);

  PShape eyeRight = createShape(ELLIPSE, 610, 220, 5, 5);
  eyeRight.setFill(color(0)); // Color negro
  dog.addChild(eyeRight);

  // Nariz del perro
  PShape nose = createShape(ELLIPSE, 600, 230, 10, 5);
  nose.setFill(color(0)); // Color negro
  dog.addChild(nose);

  // Cola del perro
  PShape tail = createShape(TRIANGLE, 500, 240, 480, 230, 500, 250);
  tail.setFill(color(60, 30, 15)); // Color marrón oscuro casi negro
  dog.addChild(tail);

  // Patas del perro
  PShape legFrontLeft = createShape(RECT, 520, 315, 15, 35);
  legFrontLeft.setFill(color(60, 30, 15)); // Color marrón oscuro casi negro
  dog.addChild(legFrontLeft);

  PShape legFrontRight = createShape(RECT, 615, 315, 15, 35);
  legFrontRight.setFill(color(60, 30, 15)); // Color marrón oscuro casi negro
  dog.addChild(legFrontRight);

  PShape legBackLeft = createShape(RECT, 510, 315, 15, 35);
  legBackLeft.setFill(color(60, 30, 15)); // Color marrón oscuro casi negro
  dog.addChild(legBackLeft);

  PShape legBackRight = createShape(RECT, 625, 315, 15, 35);
  legBackRight.setFill(color(60, 30, 15)); // Color marrón oscuro casi negro
  dog.addChild(legBackRight);
  img = loadImage("doggy.jpeg");
}

void draw() {
  shape(dog);
  image(img, 0, 0, 400, 400);
}
