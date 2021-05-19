class User {

  String userName;
  String password;


  User() {
  }
  User(String[] n){
  userName = n[0];
  password=n[1];
  }



  void setUserName(String n) {
    userName = n;
  }

  void setPassword(String p) {
    password = p;
  }

  String getUserName() {
    return userName;
  }

  String getPassword() {
    return password;
  }
}
