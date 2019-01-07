//
//  ViewController.swift
//  PlayingCard
//
//  Created by Ahmed Ibrahim on 1/7/19.
//  Copyright © 2019 Ahmed Ibrahim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var deck = PlayingCardDeck()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 1...10{
            if let card = deck.draw() {
                print("\(card)")
            }
        }
        
    }
}

