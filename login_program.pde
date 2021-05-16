
// hent gui interface
import controlP5.*;
// variable til at styre login
boolean loggedin = false;

// deklaration af to controlP5 vars. En til hvert vindue
ControlP5 cp5,cp5login;

// 
View view;

PWindow LoginWindow;


public void settings() {
  size(768, 512);
}

void setup() { 
  textSize(14);
  LoginWindow = new PWindow();
  cp5login = new ControlP5(LoginWindow);
  cp5 = new ControlP5(this);
  view = new View();
  
  
}

void draw() {

  fill(255);
  
  println(loggedin);
  if (loggedin) {
  background(0,0,255);
    
    view.youAreLoggedIn();
  
  } else {
    //loginPage.drawGUI();
  background(255, 0, 0);      
    view.youAreNOTLoggedIn();
  }
}
