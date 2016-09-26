//
//  ViewController.swift
//  FoodTracker
//
//  Created by Jasdip on 2016-09-26.
//  Copyright © 2016 Jasdip. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func setDefaultLabelText(sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
}

