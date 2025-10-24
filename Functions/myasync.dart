Future<void> orderCoffee()async{
  print("Order coffee at the counter");
  print("Make payment");
  await Future.delayed(Duration(seconds: 5));
  print("Get coffee");
  print("Go home");

}

Future<void> nightRoutine()async{
  print("Change into pajamas");
  print("Wash face");
  print("Go to sleep");
}

void main()async{
  print("Wake up and go to Lecture");
  print("Start lesson");
  print("Go to coffee shop");
  await orderCoffee();
  nightRoutine();// Last to run without the await 
  print("Start assignment");
}