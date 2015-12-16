void setup(){
  size (1280,800);
  background (0);
  
}

void draw(){
  
  fill(255);
  //rectangle
  beginShape();
  vertex(200,150);
  vertex(200,700);
  vertex(1100,700);
  vertex(1100,150);
  endShape();
  textSize(48);
  text("Oh, you're good at Super Smash Bros. Melee?",150,100);
  textSize(34);
  text("Please, tell me more about your tech skill and multi-shining capabilities.",50,750);
  //"Fox Shine"
  fill(255);
  noStroke();
  beginShape();
  vertex(300,425);
  vertex(300,500);
  vertex(350,525);
  vertex(400,500);
  vertex(400,425);
  vertex(350,400);
  endShape();
  //"Fox Shine Inner"
  fill(255);
  noStroke();
  beginShape();
  vertex(325,440);
  vertex(325,485);
  vertex(350,500);
  vertex(375,485);
  vertex(375,440);
  vertex(350,425);
  endShape();
  
  fill(0);
  textSize(20);
  text("The year is 20XX.",300,600);
  textSize(15);
  text("Everyone plays Fox at TAS levels of perfection. Because of this, the winner of a match depends solely on port priority.",225,625);
text("The RPS metagame has evolved to ridiculous levels due to it being the only remaining factor to decide matches.",225,650);

}

void keyPressed(){
  fill(0);
  textSize(50);
  text("20XX", 400,350);
  
  fill(0,255,210);
  beginShape();
  vertex(300,425);
  vertex(300,500);
  vertex(350,525);
  vertex(400,500);
  vertex(400,425);
  vertex(350,400);
  endShape();
  
  fill(255);
  noStroke();
  beginShape();
  vertex(325,440);
  vertex(325,485);
  vertex(350,500);
  vertex(375,485);
  vertex(375,440);
  vertex(350,425);
  endShape();
  
  fill(0,255,210);
  beginShape();
  vertex(600,425);
  vertex(600,500);
  vertex(650,525);
  vertex(700,500);
  vertex(700,425);
  vertex(650,400);
  endShape();
  
  fill(255);
  noStroke();
  beginShape();
  vertex(625,440);
  vertex(625,485);
  vertex(650,500);
  vertex(675,485);
  vertex(675,440);
  vertex(650,425);
  endShape();
  
  fill(0,255,210);
  beginShape();
  vertex(900,425);
  vertex(900,500);
  vertex(950,525);
  vertex(1000,500);
  vertex(1000,425);
  vertex(950,400);
  endShape();
  
  fill(255);
  noStroke();
  beginShape();
  vertex(925,440);
  vertex(925,485);
  vertex(950,500);
  vertex(975,485);
  vertex(975,440);
  vertex(950,425);
  endShape();
}
