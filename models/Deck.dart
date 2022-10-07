import './Card.dart';

class Deck {
  List<Card> deck = [];

  void newDeck(){
    List<String> suits = ['Hearts', 'Diamonds', 'Spades', 'Clubs'];
    List<String> ranks = ['Ace', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine', 'Ten', 'Jack', 'Queen', 'King'];
    
    for (var suit in suits){
      for (var rank in ranks){
        deck.add(Card(suit, rank));
      }
    }
  }

  void printCards(){
    print("[");
    for (var card in deck){
      if(card != deck.last){
        print("${card.rank} of ${card.suit},");
      } else {
        print("${card.rank} of ${card.suit}]");
      }
    }
  }

  void shuffle(){
    deck.shuffle();
  }

  List<Card> cardsWithSuit(String suit){
    List<Card> suits = deck.where((item) => item.suit == suit).toList();

    return suits;
  }
}