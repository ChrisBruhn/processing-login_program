// hent gui interface
import controlP5.*;

// to sort my password file
import java.util.Arrays; 

// variable til at styre login
boolean loggedin = false;

// deklaration af to controlP5 vars. En til hvert vindue
ControlP5 cp5, cp5login;

// declaration of loginWindows of the type PWindow
PWindow LoginWindow;

public void settings() {
  size(768, 512);
}

void setup() { 
  textSize(18);
  fill(255);
  
  // initialization of loginWindows
  LoginWindow = new PWindow();
  
  // bind the CP5 to the two windows
  cp5login = new ControlP5(LoginWindow);
  cp5 = new ControlP5(this);
}

void draw() {
  if (loggedin) {
    background(0, 0, 255);
    text("Now, you are logged in!", 100, 100);
  } else {
    //loginPage.drawGUI();
    background(255, 0, 0);      
    text("You are NOT logged in!", 100, 100);
  }
}
