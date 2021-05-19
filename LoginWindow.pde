//<>// //<>// //<>//
class PWindow extends PApplet {
  PFont font;


  UserIO uio = new UserIO(); 

  Button loginB, newUser;
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
    fill(255);

    font = createFont("Arial", 18);
    // til at finde midten med
    x = width/2-105;

    cp5login.addTextfield("userName")
      .setPosition(x, 20)
      .setSize(210, 30)
      .setFont(font)
      .setFocus(true)
      .setColor(color(255, 255, 255))
      ;

    cp5login.addTextfield("password")
      .setPosition(x, 75)
      .setSize(210, 30)
      .setFont(font)
      .setFocus(true)
      .setPasswordMode(true)
      .setColor(color(255, 255, 255))
      ;

    loginB = cp5login.addButton("loggin_In");
    loginB.setPosition(x, 140)
      .setSize(100, 40)
      .setFont(font)
      .setLabel("Login");

    newUser = cp5login.addButton("newUser");
    newUser.setPosition(x+110, 140)
      .setSize(100, 40)
      .setFont(font)
      .setLabel("New user");
  }

  void draw() {
  }

  // tilføj bruger
  void newUser() {
    User u = new User(getUserNamePass());

    if (u.getUserName().isEmpty() == true)
    {
      text("Enter username: ", 10, 40);
    } else if (u.getPassword().isEmpty() == true)
    {
            text("Enter password: ", 10, 95);
    }
    else if (!uio.checkUserName(u)) {
      uio.addUserToList(u);
      uio.saveUserData();
      uio.display();
    }
  }
  //  der er to gange kode som tester om der er indput i min streng
  void loggin_In() {
    // create a temp user from login info
    User u = new User(getUserNamePass());

    if (u.getUserName().isEmpty() == true) //<>//
    {
      text("Enter username: ", 10, 40);
    }

    else if (u.getPassword().isEmpty() == true)
    {
            text("Enter password: ", 10, 95);
    }

    else if (uio.checkUserName(u)== false) {
      text("Its not a valid combination of username and password", 20, 20 );
    }

    // if the user i not empty and exsist i database
    if (uio.checkUserName(u) && u.getUserName().isEmpty() == false &&  u.getPassword().isEmpty() == false)
    {
      loggedin = true;
      myExit();
    } else
    {
      loggedin= false;
    }
  }

  void myExit() {
    surface.setVisible(false);
  }


  String[] getUserNamePass() {
    String un = getUserName();
    String ps = getUserPass();
    String[] s =  {un, ps};
    return s;
  }

  String getUserName() {
    String s = cp5login.get(Textfield.class, "userName").getText();
    return s;
  }

  String getUserPass() {
    String s =  cp5login.get(Textfield.class, "password").getText();
    return s;
  }
}
