//
//  Concentration.swift
//  Concentration Game
//
//  Created by Ahmed Ibrahim on 11/17/18.
//  Copyright © 2018 Ahmed Ibrahim. All rights reserved.
//

import Foundation

class Concentration {
    private(set) var cards = [Card]()
    private var indexOfOneAndOnlyFaceUpCard: Int?{
        get {
            return cards.indices.filter{cards[$0].isFaceUp}.oneAndOnly // Closure & Extension
//            let faceUpCardIndices = cards.indices.filter {cards[$0].isFaceUp}
//            return faceUpCardIndices.count == 1 ? faceUpCardIndices.first : nil
//            var foundIndex: Int?
//            for index in cards.indices {
//                if cards[index].isFaceUp {
//                    if foundIndex == nil {
//                        foundIndex = index
//                    } else {
//                        return nil // if there is a second card faced up return nil
//                    }
//                }
//            }
//            return foundIndex
        } set {
            for index in cards.indices {
                cards[index].isFaceUp = (index == newValue)
            }
        }
    }
    
    init(numberOfPairsOfCards: Int) {
        assert(numberOfPairsOfCards > 0,"Concentration.init(\(numberOfPairsOfCards)): you must have at least one pair of cards.")
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
        shuffleCards()
    }
    private func shuffleCards(){
        var shuffleCards = [Card]()
        for _ in 0..<cards.count {
            let randomIndex = Int(arc4random_uniform(UInt32(cards.count)))
            shuffleCards.append(cards.remove(at: randomIndex))
        }
        cards += shuffleCards
    }
    func chooseCard(at index: Int) {
        assert(cards.indices.contains(index),"Concentration.chooseCard(at:\(index)): choosen index not in cards.")
        if !cards[index].isMatched {
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index {
                if cards[matchIndex] == cards[index] {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
            } else {
                indexOfOneAndOnlyFaceUpCard = index
            }
        }
    }
    
}

extension Collection {
    var oneAndOnly: Element? {
        return count == 1 ? first : nil
    }
}

