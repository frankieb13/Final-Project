//
//  ViewController.swift
//  Final Project
//
//  Created by Frank Bonura on 4/30/20.
//  Copyright © 2020 Frank Bonura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBAction func foundTap(_ sender: Any) {
         outputLabel.text = "You tapped for Mustard!"
    }
    
    
    @IBAction func foundSwipe(_ sender: Any) {
         outputLabel.text = "You swiped for Ketchup!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


