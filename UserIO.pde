class UserIO {  //<>// //<>//
  User[] userList = new User[10];  

  UserIO() {
    loadUserData();
    display();
  }

  void addUserToList(User u) {
    boolean found = false; //<>//

    if ((u.getUserName().isEmpty() == false) && (u.getPassword().isEmpty() == false)) {

      for (int i=0; i<userList.length-2; i++)
      {
        if (userList[i]== null && found == false)
        {
          userList[i]=u;
          found = true;
        }
      }
    }
  }

  void loadUserData() {
    String[] lines;
    lines = loadStrings("./data/users.txt");

    for (int index =0; index < lines.length; index++) {

      String[] s = split(lines[index], ',');
      User u = new User();    
      u.setUserName(s[0]);
      u.setPassword(s[1]);
      userList[index] = u;
      u = null;
    }
    println("done load");
  }

  void saveUserData() {

    // converts a array of Users to a array of String and saves it
    String allUsersString= ""; //<>//
    
    for (User u : userList) {
      if (u != null){
      if (u.getUserName().isEmpty() == false || u.getPassword().isEmpty() == false) {
        allUsersString +=u.getUserName()+','+u.getPassword()+';';
        
      }
    }
    }
    
    
    
    String[] users = split(allUsersString, ';'); //<>//
    saveStrings("./data/users.txt", users);
    
  }


  Boolean checkUserName(User user) {
    boolean succes = false;
    for (User u : userList) {
      if (u !=null) {
        if ((user.getUserName().equals(u.getUserName())==true) && ((user.getPassword().equals(u.getPassword()))==true)) 
        {
          succes = true;
          println("Yes! we got a match");
        }
      }
    }

    return succes;
  }


  void display() {
    for (User u : userList) {
      if (u != null) {
        println(u.getUserName()+' '+u.getPassword());
      }
    }
  }

  boolean isStringEmpty(String n) {
    boolean succes = true;
      if (n.isEmpty() == true) {
        succes = true;
      } else
      {
        succes = false;
      }
    return succes;
  }
}
