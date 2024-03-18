// File: animal.dart
import 'dart:io';

// Interface for animals
abstract class Animal {
  void makeSound();
}

// Base class Animal
class BaseAnimal implements Animal {
  @override
  void makeSound() {
    print('Animal makes a sound');
  }
}

// Dog class inheriting from BaseAnimal and implementing Animal interface
class Dog extends BaseAnimal {
  @override
  void makeSound() {
    print('Dog barks');
  }
}

// Cat class inheriting from BaseAnimal and implementing Animal interface
class Cat extends BaseAnimal {
  @override
  void makeSound() {
    print('Cat meows');
  }
}

// Class to demonstrate reading data from a file
class AnimalDataReader {
  List<String> readDataFromFile(String fileName) {
    try {
      File file = File(fileName);
      List<String> lines = file.readAsLinesSync();
      return lines;
    } catch (e) {
      print("Error reading file: $e");
      return [];
    }
  }
}

// Main file to test the functionalities
void main() {
  Dog dog = Dog();
  Cat cat = Cat();
  
  dog.makeSound();
  cat.makeSound();

  AnimalDataReader reader = AnimalDataReader();
  List<String> lines = reader.readDataFromFile('animal_data.txt');
  print('Data from file:');
  for (String line in lines) {
    print(line);
  }
}
