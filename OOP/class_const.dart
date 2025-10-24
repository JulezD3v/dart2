class Car{
  String name;
  int year;

  Car(this.name, this.year); //normal constructor
}

class Dog{
  Dog(){
    print("This is my Dog");// Old fashioned
  }
}

class BioData{
  final String gender;
  final int year;

  const BioData(this.gender, this.year); //objects created will be immutable
}

class Clothes{
  String name;
  int size;

  Clothes(this.name, this.size);
  Clothes.shirt(this.name): size = 23;// named constructor
   @override
  
  String toString(){

    return 'name: $name and  size: $size)';
  }
}

class Database {
  static final Database _instance = Database._internal();

  factory Database() => _instance;

  Database._internal();// still can't get this 
}


void main(){
  var mine = Car("Mazda", 1998);
  var doggie = Dog();
  var person1 = BioData("female", 1980);
  var person4= BioData("Male", 2001);
  var myShirt = Clothes.shirt("Polo Shirt");
  var schoolShirt = Clothes("T-shirt", 40);
  var factorys = Database();
  print(factorys);
  print("Se said she wants a $mine");
  print("The subject is $person1 while the other is $person4");
  print("That $myShirt is mine");
  print(doggie);
  print(schoolShirt);
// Quick class recap 
// 
}