//RUNNER
clubScreen cl = new clubScreen();
PImage a;
PImage b;
PImage c;
PImage k;
PImage l;
PFont pf;
ClubTree tree = new ClubTree();
String s;
TreeNode current;
boolean start=false;
boolean questions=true;

void setup() {
  size(1200, 700);
  background (255);
  a = loadImage("irishC.jpg");
  b = loadImage("studco.jpg");

  k = loadImage("mathteam.jpg");


  pf = createFont("Lucida Sans Demibold", 32);
  introScene();
  current=tree.buildTree();
}

void draw(){
  
}

void mousePressed() {
  s=(String)current.getValue();
  if (start==false) {
    start=true;
    sceneOne();
 } else if(questions==false){
   //nothing's supposed to be here- it just makes sure that once you've found which club you're doing, pressing within the bounds won't make
   //the program throw a null pointer
  }else{
    if (mouseX>=300&&mouseX<=475&&mouseY>=450&&mouseY<=580) {
        current=current.getLeft();
        s=(String)current.getValue();
        if (s.equals("You should join Student Council!")||s.equals("You should join the National Spanish Honors Society")||s.equals("You should join National French Honors Society!")
          ||s.equals("You should join National Chinese Honors Society!")||s.equals("You should join Marching Band!")||s.equals("You should join Theater Arts/ Music Productions!")
          ||s.equals("You should join Color Guard!")||s.equals("You should join the Tri-M Honors Society!")||s.equals("You should join the Yearbook Committee!")||s.equals("You should join National Art Honors Society!")||
          s.equals("You should join Math Team!")) {
          resultsSlide();
          questions=false;
        } else
          sceneOne();
      }

    if (mouseX>=675&&mouseX<=850&&mouseY>=450&&mouseY<=580) {
      current=current.getRight();
      s=(String)current.getValue();
      if (s.equals("You should join Prom Committee!")||s.equals("You should try out German! Join National German Honors Society.")||s.equals("You should join a co-curricular band!")
        ||s.equals("You should join an extracurricular choir!")||s.equals("You should join the Dance Show!")||s.equals("You should join Newspaper!")
        ||s.equals("You should join Shadows- Literary Arts Magazine")||s.equals("You should join Video Production!")||s.equals("You should join Debate!")||s.equals("You should join Speech Team!")||s.equals("You should join Theater Arts/ Music Productions!")|| s.equals("You should join Quiz Bowl!")||s.equals("You should join DECA!")||s.equals("Join FCA!")||s.equals("You should join Math Team!")||s.equals("You should join Mock Trial!")||s.equals("Join Mosaic!")||s.equals("You should join Rocket Club!")||
  s.equals("Join Robotics!")||  s.equals("You should join Science Olympiad!")|| s.equals("Hey you're cool! Join Hack Club.")||s.equals("Join Bees Please!")||s.equals("You should join Marching Band!")) {
        resultsSlide();
        questions=false;
      } else {
        sceneOne();
      }
    }
  }
}
void resultsSlide() {
  background(255);
  a.resize(200, 200);
  cl.borders();
  image(a, 900, 72);
  text(s, 100, 150);
  ///////pictures
  if(s.equals("You should join Student Council!")){
    b.resize(200, 200);
    image(b, 900, 72);
  }
  if(s.equals("You should join Math Team!")){
    k.resize(200, 200);
   image(k, 900, 72);
  }
 
  
  //println("got here");
}
void introScene() {
  cl.words();
  cl.ynKeys();
  cl.borders();
  a.resize(200, 200);
  image(a, 900, 72);
}
void sceneOne() {
  background(255);
  a.resize(200, 200);
  cl.ynKeys();
  cl.borders();
  image(a, 900, 72);
  text(s, 100, 150);
}

void sceneTwo() {
  background(255);
  cl.ynKeys();
  cl.borders();
  a.resize(200, 200);
  image(a, 900, 72);
  text(s, 100, 150);
}
void keyPressed(){
  if(keyCode==UP){
   setup();
  }
}

public interface Treeable {
  public Object getValue();
  public Treeable getLeft();
  public Treeable getRight();
  public void setValue(Comparable value);
  public void setLeft(Treeable left);
  public void setRight(Treeable right);
}
