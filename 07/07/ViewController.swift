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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        setup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func press(sender: AnyObject) {
        let letter = self.letter.text[0]
        println(letter)
    }
    
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
        textField.resignFirstResponder()
        return true;
    }
    func setup() {
        let width: CGFloat = 200.0
        let height: CGFloat = 300.0
        let ropeFrame = CGRectMake(
            0,
            0,
            width,
            height)
        
        self.game = Game(frame: ropeFrame, referenceView: view)
        view.addSubview(self.game)
        
        
        self.word.text = self.game.letter
    }

}

