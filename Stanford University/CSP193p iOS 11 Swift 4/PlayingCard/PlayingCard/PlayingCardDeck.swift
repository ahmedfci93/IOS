//
//  PlayingCardDeck.swift
//  PlayingCard
//
//  Created by Ahmed Ibrahim on 1/7/19.
//  Copyright © 2019 Ahmed Ibrahim. All rights reserved.
//

import Foundation

struct PlayingCardDeck {
    private(set) var cards = [PlayingCard]()
    init() {
        for suit in PlayingCard.Suit.all {
            for rank in PlayingCard.Rank.all {
                cards.append(PlayingCard(suit: suit, rank: rank))
            }
        }
    }
    mutating func draw() -> PlayingCard? {
        if cards.count > 0{
            return cards.remove(at: cards.count.arc4random)
        }
        return nil
    }
}
extension Int{
    var arc4random: Int {
        if self > 0 {
            return Int(arc4random_uniform(UInt32(self)))
        } else if self < 0 {
            return -Int(arc4random_uniform(UInt32(self)))
        } else {
            return 0
        }
    }
}