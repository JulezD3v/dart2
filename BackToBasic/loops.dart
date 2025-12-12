void main(){
List <int> nums = [1,2,3,4];
int countDown = 5;
  Map<String, int> myMap = {
    "Jsm1": 101,
    "Jsm2": 202,
    "Jsm3": 303,
    "Jsm4": 404,

  };

for (var number in nums) {
  print(number);
}

for (var bases in myMap.keys) {
  print(bases);
  
}
myMap.values.forEach((floor){
  print(floor);
}); 

while(countDown >= 0){
  print(countDown);
  countDown--;
}
print("Happy New Year");
}