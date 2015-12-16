boolean win = false;
boolean dank = false;
PImage Galaga;
PImage Space;


Enemy myEnemy;
Gun myGun;
Ship myShip;
void setup() {
  size(1440, 1080);
  background(0);

  myShip = new Ship();
  myGun = new Gun();
  myEnemy = new Enemy();
}

void draw() {
  if (dank == false) {
    Galaga = loadImage("https://cloud.githubusercontent.com/assets/16229366/11832586/66d0e9ac-a37f-11e5-8023-6bbba3efaa9b.jpg");
    image(Galaga, 0, 0);
    textSize(65);
    color(255);
    text("Click anywhere to begin", 350, 875);
  }
  if (dank == true) {
    Space = loadImage("https://cloud.githubusercontent.com/assets/16229366/11832598/7de651fe-a37f-11e5-82f9-ef07a0733c3d.jpg");
    image(Space, 0, 0);
    myGun.drawGun();
    myShip.display();
    myShip.move();

    for (int e = 0; e <= myEnemy.enemySpawn.length - 1; e++) {
      myEnemy.displayEnemy(e);
    }
    myEnemy.enemyMove();

    if (myEnemy.collision) {
      println("hit"); 
      for (int e = 0; e <= 11; e++) {
        myEnemy.enemySpawn[e][1] = 0;  
        win = true;
      }
    } else {
      println("miss");
    }
    if (win){
      fill(0);
     rect(0,0,width,height);
     fill(255);
     textSize(72);
     text("Congratulations!",720,540);
    }
  }
}

void mousePressed() {
  dank = true;
}

class Enemy {
  int [][] enemySpawn = { {100, 255}, {200, 255}, {300, 255}, {400, 255}, {500, 255}, 
                          {600, 255}, {700, 255}, {800, 255}, {900, 255}, {1000, 255}, 
                          {1100, 255}, {1200, 255}, {1300, 255} };
  int enemyY, enemyOffset;
  boolean collision;

  Enemy() {
    enemyOffset = 40;
  }

  void displayEnemy(int e) {
    fill(255, 0, 0, enemySpawn[e][1]);
    rect(enemySpawn[e][0], enemyY, enemyOffset, enemyOffset);

    checkForCollision(e);
  }

  void enemyMove() {
    enemyY = enemyY + 10;

    if (enemyY >= height + 20) {
      enemyY = 0;
    }
  }

  void checkForCollision(int e) {
    if (myGun.bulletY <= enemyY + enemyOffset && myGun.bulletY >= enemyY) {
      if (myGun.bulletX >= enemySpawn[e][0] && myGun.bulletX <= enemySpawn[e][0] + enemyOffset) {
        collision = true;
      }
    } else {
      collision = false;
    }
  }
}

class Gun{
  float bulletX, bulletY, bulletOffset;
  boolean gunFired;
  
  Gun(){
    bulletOffset = 5;
  }
  
  void drawGun(){
    if(gunFired) {
      bulletX = myShip.centerX + 30;
      bulletY = myShip.centerY + 15;
      gunFired = false;
    }else{
      bulletY = bulletY - 30;
    }
    
    fill(255);
    rect(bulletX, bulletY, bulletOffset, bulletOffset + 15);
  }
}

class Ship {
  PImage Ship;
  int centerX, centerY;

  Ship() {
    centerX = 720;
    centerY = 950;
  }

  void display() {
    Ship = loadImage("https://cloud.githubusercontent.com/assets/16229366/11832612/bb1d5798-a37f-11e5-8cff-d32527a31602.png");
    image(Ship, centerX, centerY);
  }

  void move() {
    if (keyPressed) {
      if (key == 'a') {
        centerX = centerX - 15;

        if (centerX <= 0) {
          centerX = 15;
        }
      }
      if (key == 'd') {
        centerX = centerX + 15;
        
        if (centerX + 15 >= width) {
          centerX = width - 60;
        }
      }
      if (key == 's') {
        myGun.gunFired = true;
      }
    }
  }
}
