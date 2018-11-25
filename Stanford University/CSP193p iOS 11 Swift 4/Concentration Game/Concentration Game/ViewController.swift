//
//  ViewController.swift
//  Concentration Game
//
//  Created by Ahmed Ibrahim on 11/17/18.
//  Copyright © 2018 Ahmed Ibrahim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var numberOfPairsOfCards: Int{
        return (cardButtons.count + 1) / 2
    }
    
    lazy private var game = Concentration(numberOfPairsOfCards: numberOfPairsOfCards)
    
    @IBOutlet private var cardButtons: [UIButton]!
    
    @IBOutlet private weak var flipCountLabel: UILabel! {
        didSet {
            updateFlipsCount()
        }
    }
    private(set) var flipCount = 0 {
        didSet {
            updateFlipsCount()
        }
    }
    
    private func updateFlipsCount (){
        let attributes: [NSAttributedStringKey: Any] = [
            .strokeWidth : 5.0,
            .strokeColor : UIColor.orange
        ]
        let attributedString = NSAttributedString(string: "Flips: \(flipCount)", attributes: attributes)
        flipCountLabel.attributedText = attributedString
        
    }
    
    @IBAction private func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender){
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
        } else {
            print("chosen card was not in card buttons.")
        }
    }
    
    private func updateViewFromModel(){
        for index in cardButtons.indices {
            let button = cardButtons[index]
            let card = game.cards[index]
            if card.isFaceUp {
                button.setTitle(emoji(for: card), for: .normal)
                button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            } else {
                button.setTitle("", for: .normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1) : #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
            }
        }
    }
    private var emoji = [Card : String]()
    //    private var emojiChoices = ["👻","🤡","😈","🎃","🌕","🌹","⛄️","🍎"]
    private var emojiChoices = "👻🤡😈🎃🌕🌹⛄️🍎"
    private func emoji(for card:Card) -> String {
        if emoji[card] == nil {
            let randomIndex = emojiChoices.index(emojiChoices.startIndex, offsetBy: emojiChoices.count.arc4random)
            emoji[card] = String(emojiChoices.remove(at: randomIndex))
        }
        return emoji[card] ?? "?"
    }
    
}

extension Int{
    var arc4random: Int{
        if self > 0{
            return Int(arc4random_uniform(UInt32(self)))// positive number
        } else if self < 0 {
            return -Int(arc4random_uniform(UInt32(abs(self))))// negative numbers
        }
        return 0
    }
}

