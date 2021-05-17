class PWindow extends PApplet { //<>//
  PFont font;

  Button loginB;
  Textfield username, userpass;
  // til at finde midten med
  float x;


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
    // til at finde midten med
    x = width/2-50;

    cp5login.addTextfield("userName")
      .setPosition(x, 20)
      .setSize(100, 30)
      .setFont(font)
      .setFocus(true)
      .setColor(color(255, 0, 0))
      ;

    cp5login.addTextfield("password")
      .setPosition(x, 75)
      .setSize(100, 30)
      .setFont(font)
      .setFocus(true)
      .setPasswordMode(true)
      .setColor(color(255, 0, 0))
      ;

    loginB = cp5login.addButton("loggin_On");
    loginB.setPosition(x, 140)
      .setSize(100, 40)
      .setFont(font)
      .setLabel("Login");
  }

  void draw() {
       //background(150);

  }



  // funktion som skal kontrollere bruger navn og password
  void loggin_On() {

    //
    //
    if (getUserName().isEmpty() == true || getUserPass().isEmpty() == true){
    if (getUserName().isEmpty() == true) {
      text("Pls enter username:", 20, 40);
    } else
    {
      String un = getUserName();
    }

    if (getUserPass().isEmpty() == true) {
      text("Pls enter password:", 20, 95);
    } else
    {
      String pass = getUserPass();
    }
    }
    /*
    if (loggedin == true)
     {
     loggedin = false;
     } else
     {
     loggedin=true;
     }
     myExit();
     */
  }



  void myExit()
  {
    surface.setVisible(false);
  }


  String getUserName() {

    String s =   cp5login.get(Textfield.class, "userName").getText();
    //println(s);
    return s;
  }

  String getUserPass() {
    String s =  cp5login.get(Textfield.class, "password").getText();
    return s;
  }
}
