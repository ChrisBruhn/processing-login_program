import controlP5.*;
boolean loggedin = false;

ControlP5 cp5,cp5login;
View view;

PWindow win,LoginWindow;


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
    view.drawGUI();
    view.youAreLoggedIn();
  background(0,0,255);
  } else {
    //loginPage.drawGUI();
  background(255, 0, 0);      
    view.youAreNOTLoggedIn();
  }
}
