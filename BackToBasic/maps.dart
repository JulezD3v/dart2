void main(){
  Map<String, int> myMap = {
    "BaseMent": 001,
    "Jsm2": 202,
    "Jsm3": 303,
    "Jsm4": 404,

  };
  print("ROOM: ${myMap["BaseMent"]}");
  myMap["Jsm1"] = 101; 

  print(myMap);

  int? myOperation = 10;
  print(myOperation);
}