boolean dank = false;
PImage FinalDestination;


Fox myFox;
void setup() {
  size(640, 480);
  myFox = new Fox();
}

void draw() {  
  if (dank == false){
  FinalDestination = loadImage("https://cloud.githubusercontent.com/assets/16229366/11832512/8daaaab4-a37e-11e5-9a68-adae756219ec.png");
  image(FinalDestination,0,0);
  myFox.display();
  myFox.move();
  }
  if (dank == true) {
    background(0,0,255);
  textSize(50);
  text("20XX", 340, 175);
}
}


void mousePressed(){
  dank = true;
  
}

class Fox{
  PImage fox;
  int centerX,centerY;
  
  Fox(){
   centerX = 340;
   centerY = 175;
  }
  
  void display(){
   fox = loadImage("https://cloud.githubusercontent.com/assets/16229366/11832523/c0d8288a-a37e-11e5-8792-7f7f793d54e3.png");
   image(fox,centerX,centerY);
    
  }
  
  void move(){
   if(keyPressed){
     if(key == 'a'){
       centerX = centerX - 5;
     }
     if(key == 'd'){
       centerX = centerX + 5;
     }
   }  
  }
}
