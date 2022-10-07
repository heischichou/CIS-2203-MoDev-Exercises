import './Contact.dart';
import 'dart:io';

class Phonebook {
  List<Contact> phonebook = [];

  void populate(){
    phonebook.add(Contact("John", "Doe", "555-555-5555", "123 Main St"));
    phonebook.add(Contact("Lionel", "Johnson", "111-111-1111", "Nottingham, United Kingdom"));
    phonebook.add(Contact("Jane", "Smith", "555-555-5555", "123 Main St"));
    phonebook.add(Contact("Mike", "Hoxlong", "666-669-9999", "Sydney, Australia"));
    phonebook.add(Contact("James", "Root", "666-666-6666", "Des Moines, Iowa, United States"));
  }

  void addContact(){
    print("Enter new contact's first name:");
    String? firstName = stdin.readLineSync();

    print("Enter new contact's last name:");
    String? lastName = stdin.readLineSync();

    print("Enter new contact's phone number:");
    String? phoneNumber = stdin.readLineSync();

    print("Enter new contact's address:");
    String? address = stdin.readLineSync();

    Contact contact = Contact(firstName, lastName, phoneNumber, address);
    phonebook.add(contact);
  }

  void displayContact(Contact contact){
    print("${contact.firstName} ${contact.lastName}");
    print("${contact.phoneNumber}");
    print("${contact.address}");
    print("");
  }

  void displayContacts(){
    for (var contact in phonebook){
      displayContact(contact);
    }
  }

  Contact findContact(String firstName, String lastName){
    Contact contact = phonebook.firstWhere((card) => card.firstName == firstName && card.lastName == lastName, orElse: () => Contact("","","",""));
    return contact;
  }

  void removeContact(){
    print("Please select the contact you wish to remove from this list.");
    displayContacts();

    print("Enter the first name of the contact you wish to remove:");
    String? firstName = stdin.readLineSync();

    print("Enter the last name of the contact you wish to remove:");
    String? lastName = stdin.readLineSync();

    if(firstName != null && lastName != null){
      Contact contact = findContact(firstName, lastName);

      print("");
      if(contact.firstName != "" && contact.lastName != ""){
        phonebook.remove(contact);
        print("Removed $firstName $lastName from the phonebook.");
      } else {
        print("$firstName $lastName not found.");
      }
    }
  }

  void searchContact(){
    print("Enter the first name of the contact you wish to search:");
    String? firstName = stdin.readLineSync();

    print("Enter the last name of the contact you wish to search:");
    String? lastName = stdin.readLineSync();

    if(firstName != null && lastName != null){
      Contact contact = findContact(firstName, lastName);

      print("");
      if(contact.firstName != "" && contact.lastName != ""){
        print("The contact you are looking for is:");
        displayContact(contact);
      } else {
        print("$firstName $lastName not found.");
      }
    }
  }
}