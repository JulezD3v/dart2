void main(){
 String name = "Jane";
 bool lampOn = false ;
 bool gotMoney = true;

 name  = name.isEmpty? "Please enter your name": "Valid Input ${name} you may proceed";
 lampOn = true ? true : false;
 print(name);
 print(lampOn.toString());
 print(!gotMoney != true? "I will pay": "Mmmh, please");
}