import './models/Card.dart';
import './models/Deck.dart';

void main(){
  Deck deck = Deck();

  // initialize deck
  deck.newDeck();

  // print deck of cards
  deck.printCards();

  // shuffle deck
  deck.shuffle();

  // print shuffled deck
  deck.printCards();

  // print cards of a particular suit
  List<Card> suits = deck.cardsWithSuit('Spades');
  for(var card in suits){
    print("${card.rank} of ${card.suit}");
  }
}