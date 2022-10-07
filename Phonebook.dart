import './models/Phonebook.dart';

void main(){
  Phonebook phonebook = Phonebook();

  // populate the phonebook with 5 contacts
  phonebook.populate();

  // display list of contacts
  phonebook.displayContacts();

  // add a new contact
  phonebook.addContact();

  // display list of contacts, with new contact added
  phonebook.displayContacts();

  // remove a contact
  phonebook.removeContact();

  // display list of contacts, with contact removed
  phonebook.displayContacts();

  // search for a contact in the phonebook
  phonebook.searchContact();
}