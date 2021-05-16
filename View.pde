class View{
PFont font;

View() {
    font = createFont("Arial", 14);
  }
  
void drawGUI(){
 text("You are logged in!",100,100);
}  



void youAreLoggedIn(){
   text("You are logged in!",100,100);
}

void youAreNOTLoggedIn(){
   text("You are NOT logged in!",100,100);
}


}
