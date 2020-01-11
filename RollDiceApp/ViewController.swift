//
//  ViewController.swift
//  RollDiceApp
//
//  Created by tcs Fremont on 12/6/19.
//  Copyright © 2019 tcs Fremont. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let names: [String] = [bean, cherry, maple,]
    
    @IBOutlet weak var secretSantaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func randomizer(_ sender: UIButton) {
        secretSantaLabel.text = names.randomElement()!
    }
    
}



