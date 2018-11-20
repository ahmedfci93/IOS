//
//  Card.swift
//  Concentration Game
//
//  Created by Ahmed Ibrahim on 11/17/18.
//  Copyright © 2018 Ahmed Ibrahim. All rights reserved.
//

import Foundation

struct Card {
    var isFaceUp = false
    var isMatched = false
    var identifier : Int
    
    private static var identifierFactory = 0
    private static func getUniqueIdentifier () -> Int{
        identifierFactory += 1
        return identifierFactory
    }
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
