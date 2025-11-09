

void main(){
  var person1 = Person(
    name: "Julie",
    age: 30,
    residence: "Ottawa",
  );

  var person2 = Person(
    name: "Julie",
    age: 30,
    residence: "Ottawa",
  );

  print(person2 ==person1);
  print(person2.hashCode);
  print(person1.hashCode);

}

class Person  {//extends Equitable
  final String name;
  final int age;
  final String residence;

  Person({required this.name, required this.age, required this.residence});

  @override
  bool operator ==(Object other) {
    return other is Person && other.name == name;
  }

  @override
  int get hashCode => name.hashCode; // Flutter its replaced with Equitable dep to avoid redudancy in user data
}