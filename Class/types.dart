//Normal class

class Car{
  String  model;
  Car(this.model);

  void drive(){
    print("$model is famous");

  }

}

void main(){
  var c = Car("Toyota");
  c.drive();

  var d = Dog();
  d.makesound();
}

// Abstract class. You can’t create an object from it. It’s a blueprint for other classes.

abstract class Animal{
  void makesound(){
    print("The");
  }
}

class  Dog extends Animal {
  @override

  void makesound()=> print("A dog barks");
}
