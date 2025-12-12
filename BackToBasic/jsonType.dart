void main(){
  Map<String, dynamic> jsonMap = {
    "name":"Jane",
    "schoolID": 7909,
  "classes":{
    "class1":"first class",
    "class2": "second class"
  }
  };
  print("Student information: \n Name: ${jsonMap["name"]} \n Student Adm: ${jsonMap["schoolID"]}");
}
