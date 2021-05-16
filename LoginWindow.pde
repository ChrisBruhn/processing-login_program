class PWindow extends PApplet {
  PFont font;

  Button loginB;
  Textfield username,userpass;
  
  
  
  PWindow() {
    super();
    PApplet.runSketch(new String[] {this.getClass().getSimpleName()}, this);

    

  }

  void settings() {
    size(500, 200);
  }

  void setup() {
    background(150);
    font = createFont("Arial", 18);
    
    float x = width/2-50;
    
    
    cp5login.addTextfield("Name")
     .setPosition(x,20)
     .setSize(100,30)
     .setFont(font)
     .setFocus(true)
     .setColor(color(255,0,0))
     ;

    cp5login.addTextfield("Password")
     .setPosition(x,75)
     .setSize(100,30)
     .setFont(font)
     .setFocus(true)
     .setPasswordMode(true)
     .setColor(color(255,0,0))
     ;
    
    loginB = cp5login.addButton("loggin_On");
    loginB.setPosition(x, 130)
      .setSize(100, 40)
      .setFont(font)
      .setLabel("Login");
    
    
  }

  void draw() {
    
    
  }

  
  // funktion som skal kontrollere bruger navn og password
  void loggin_On() {
    if (loggedin == true)
    {
      loggedin = false;
    } else
    {
      loggedin=true;
    }
    myExit();
  }
void myExit()
  {
    //dispose();
    //LoginWindow = null;
       surface.setVisible(false);

  }


}


  
