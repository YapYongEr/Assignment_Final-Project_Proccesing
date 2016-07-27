int car1 = 25;
int car2 = 555;
int car3 = 800;
int car4 = 645;
int car5 = 300;
int car6 = 201;
int car7 = 84;
int car8 = 95;
int car9 = 200;
int dir = 10;
int dir2 = 15;
int dir3 = 22;
int dir4 = 30;
int dir5 = 17;
int dir6 = 5;
int dir7 = 7;
int dir8 = 35;
int dir9 = 47;
int movey = 450;
int movex = 50;
int lives = 3;
 
void setup()
 
{
  size(900,900);
}
 
void draw()
 
{
  noStroke();
  background(55,205,95);
   
  fill (40,40,40);
   
  rect (250,0,285,900); //road
  rect (90,0,105,900);
  rect (595,0,105,900);
   
  //road lines:
   
  fill (255,255,255);
   
  rect (310,0,5,50);
   
  rect (310,100,5,50);
   
  rect (310,195,5,50);
   
  rect (310,290,5,50);
   
  rect (310,385,5,50);
   
  rect (310,480,5,50);
   
  rect (310,575,5,50);
   
  rect (310,670,5,50);
   
  rect (310,765,5,50);
   
  rect (310,860,5,50);
   
   
   
  rect (365,0,5,50);
   
  rect (365,100,5,50);
   
  rect (365,195,5,50);
   
  rect (365,290,5,50);
   
  rect (365,385,5,50);
   
  rect (365,480,5,50);
   
  rect (365,575,5,50);
   
  rect (365,670,5,50);
   
  rect (365,765,5,50);
   
  rect (365,860,5,50);
   
   
  rect (420,0,5,50);
   
  rect (420,100,5,50);
   
  rect (420,195,5,50);
   
  rect (420,290,5,50);
   
  rect (420,385,5,50);
   
  rect (420,480,5,50);
    
  rect (420,575,5,50);
   
  rect (420,670,5,50);
   
  rect (420,765,5,50);
   
  rect (420,860,5,50);
   
   
  rect (475,0,5,50);
   
  rect (475,100,5,50);
   
  rect (475,195,5,50);
   
  rect (475,290,5,50);
   
  rect (475,385,5,50);
   
  rect (475,480,5,50);
    
  rect (475,575,5,50);
   
  rect (475,670,5,50);
   
  rect (475,765,5,50);
   
  rect (475,860,5,50);
   
   
  rect (140,0,5,50);
   
  rect (140,100,5,50);
   
  rect (140,195,5,50);
   
  rect (140,290,5,50);
   
  rect (140,385,5,50);
   
  rect (140,480,5,50);
    
  rect (140,575,5,50);
   
  rect (140,670,5,50);
   
  rect (140,765,5,50);
   
  rect (140,860,5,50);
   
   
  rect (650,0,5,50);
   
  rect (650,100,5,50);
   
  rect (650,195,5,50);
   
  rect (650,290,5,50);
   
  rect (650,385,5,50);
   
  rect (650,480,5,50);
    
  rect (650,575,5,50);
   
  rect (650,670,5,50);
   
  rect (650,765,5,50);
   
  rect (650,860,5,50);
   
   
   
  fill (200,15,220);
   
  ellipse (movex,movey,30,30); // animal
   
 // animal controls:
 if(keyPressed){
  if (key == 'W' || key == 'w') {movey = movey -5;}
  if (key == 'A' || key == 'a') {movex = movex -5;}
  if (key == 'S' || key == 's') {movey = movey +5;}
  if (key == 'D' || key == 'd') {movex = movex +5;} }
   
  //animal enemy:
   
  if (movex > 310  &&  movex < 380  &&  movey < car1+100  &&  movey > car1 - 15) {movey=450;movex=50; lives = lives - 1;}
  if (movex > 410 && movex < 485 && movey < car2+100 && movey > car2 - 15) {movey=450;movex=50; lives = lives - 1;}
  if (movex > 250 && movex < 320 && movey < car3+100 && movey > car3 - 15) {movey=450;movex=50; lives = lives - 1;}
  if (movex > 390 && movex < 430 && movey < car5+100 && movey > car5 - 15) {movey=450;movex=50; lives = lives - 1;}
  if (movex > 80 && movex < 120 && movey < car6+100 && movey > car6 - 15) {movey=450;movex=50; lives = lives - 1;}
  if (movex > 130 && movex < 170 && movey < car7+100 && movey > car7 - 15) {movey=450;movex=50; lives = lives - 1;}
  if (movex > 640 && movex < 680 && movey < car8+100 && movey > car8 - 15) {movey=450;movex=50; lives = lives -1;}
  if (movex > 590 && movex < 630 && movey < car9+100 && movey > car9 - 15) {movey=450;movex=50; lives = lives -1;}
   
  //animal borders:
   
  if (movey < 20) {movey = 20;}
  if (movey > 880) {movey = 880;}
  if (movex < 20) {movex = 20;}
  if (movex > 880) {movex = 880;}
   
   
 
  fill (196,42,42);
   
  rect (325,car1,40,75); //red car
   
  //red car movement:
   
  car1 = car1 + dir;
  if (car1 <0 || car1 > 825) {dir=dir * -1;}
   
   
   
  fill (42,42,196);
   
  rect (425,car2,40,75); //blue car
   
  //blue car movement:
   
  car2 = car2 + dir2;
  if (car2 <0 || car2 > 825) {dir2=dir2 * -1;}
   
   
   
  fill (42,196,42);
   
  rect (265,car3,40,75); //green car
   
  //green car movement:
   
  car3 = car3 + dir3;
  if (car3 <0 || car3 > 825) {dir3=dir3 * -1;}
   
   
   
  fill (38,252,161);
   
  rect (485,car4,40,70); //teal car
   
  //teal car movement:
    
  car4 = car4 + dir4;
  if (car4 <0 || car4 > 825) {dir4=dir4 * -1;}
   
   
   
  fill (250,250,10);
   
  rect (375,car5,40,75); //yellow car
   
  //yellow car movement:
   
  car5 = car5 + dir5;
  if (car5 <0 || car5 > 825) {dir5=dir5 * -1;}
   
   
   
   fill (188,44,179);
   
  rect (95,car6,40,75); //pink car
   
  //pink car movement:
   
  car6 = car6 + dir6;
  if (car6 <0 || car6 > 825) {dir6=dir6 * -1;}
   
   
  fill (255,141,46);
   
  rect (145,car7,40,75); //orange car
   
  //orange car movement:
   
  car7 = car7 + dir7;
  if (car7 <0 || car7 > 825) {dir7=dir7 * -1;}
  
  
  
   fill (147,19,240);
   
   rect (655,car8,40,75); //purple car
   
    //purple car movement:
   
    car8 = car8 + dir8;
    if (car8 <0 || car8 > 825) {dir8=dir8 * -1;}
     
     
    fill (174,250,35);
   
   rect (605,car9,40,75); //lime car
   
    //lime car movement:
   
    car9 = car9 + dir9;
    if (car9 <0 || car9 > 825) {dir9=dir9 * -1;}
    
    
   
   
  textSize (20);
  fill (0,0,0);
  text ("Lives:" +lives,795,50);
   
 
 
    if (lives<1) {
       background (202,101,50);
       fill (123,234,100);
       textFont(createFont("SansSerif",48)); 
       text ("Game Over! You Lose.", 200,250);
       fill (0,0,0);
       textFont(createFont("SansSerif",28));
       text ("Press the Space Bar to Restart",250,400);  }
    if(key==' ') {lives=3;}
   
   
   
    if (movex<901 && movex>750) {background (120,134,200);
    fill (0,255,255); textFont(createFont("SansSerif",48));
    text ("You Win!", 350,300);
    fill (0,0,0);
    textFont(createFont("SansSerif",28));
    text ("Press the Space Bar to Play Again",250,400);  }
    if(key ==' '){lives=3;
                  movex = 50;
                  movey = 450;}
  
 }
