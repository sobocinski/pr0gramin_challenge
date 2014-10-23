//
//  ViewController.swift
//  07
//
//  Created by Paweł Sobociński on 22.10.2014.
//  Copyright (c) 2014 Paweł Sobociński. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game: Game!

    @IBOutlet weak var letter: UITextField!
    @IBOutlet weak var word: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var gameView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func press(sender: AnyObject) {
        if self.letter.text.length > 0 {
            var char: Character = self.letter.text[0.0]!
            
            if game.hasLetter(char) {
                //bug here = same letter give extra point
                game.score++
                scoreLabel.text = String(game.score)
            }
            else {
                if game.fail() {
                    scoreLabel.textColor = UIColor.redColor()
                    scoreLabel.text = "Game over!!!"
                }
            }
        }
        
        
        
    }
    
    
    
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
        textField.resignFirstResponder()
        return true;
    }
    func setup() {
        
        self.game = Game(frame: self.gameView.frame, referenceView: self.gameView)
        word.text = game.letter
    }

}

