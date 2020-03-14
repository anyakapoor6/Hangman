//
//  ViewController.swift
//  RollDiceApp
//
//  Created by tcs Fremont on 12/6/19.
//  Copyright © 2019 tcs Fremont. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let words = ["batman", "geography", "dystopia", "circumlocution", "magnanimous", "usufruct", "coruscant", "varsity", "tennis", "spiders", "pythagorean", "trigonometry", "Washington", "Hamilton", "Calhoun", "Kentucky"]
    var chosenWord: String?
    var wordOnScreen: String?
    
   
    
//    func identifyLetter(w: String) {
//        var word = String();
//        var i = Int();
//          for letters in chosenWord!{
//            let ch = Array(wordOnScreen)[i];
//            if String(letters) == w{
//              word.append(letters)
//            } else if (ch != "_")
//            {
//              word.append(ch);
//            } else {
//              word.append("_")
//            }
//            i=i+1;
//          }
//          wordOnScreen = word;
//    }
    

    
    
    @IBOutlet weak var hangmanLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        chosenWord = words.randomElement()!
        wordOnScreen = String(repeating: "_", count: chosenWord!.count);
        hangmanLabel.text = wordOnScreen
        hangmanLabel.attributedText = formatLetterSpacing()
        
       
    }
    @IBAction func randomizer(_ sender: UIButton) {
        hangmanLabel.text = wordOnScreen
    }
    
    func formatLetterSpacing() -> NSAttributedString {
        NSAttributedString.init(string: hangmanLabel.text!, attributes: [NSAttributedString.Key.kern: 20])
    }
}



