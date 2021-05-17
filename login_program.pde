
// hent gui interface
import controlP5.*;
// variable til at styre login
boolean loggedin = false;

// deklaration af to controlP5 vars. En til hvert vindue
ControlP5 cp5, cp5login;

// 


PWindow LoginWindow;


public void settings() {
  size(768, 512);
}

void setup() { 
  textSize(14);
  LoginWindow = new PWindow();
  cp5login = new ControlP5(LoginWindow);
  cp5 = new ControlP5(this);

}

void draw() {

  fill(255);

  
  if (loggedin) {
    background(0, 0, 255);
   text("Now, you are logged in!",100,100);

  } else {
    //loginPage.drawGUI();
    background(255, 0, 0);      
   text("You are NOT logged in!",100,100);
  }
}
