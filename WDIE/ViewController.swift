//
//  ViewController.swift
//  WDIE
//
//  Created by Urja Nadibail on 6/24/17.
//  Copyright © 2017 Urja Nadibail. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var WhatButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func WhatButtonAction(_ sender: Any) {
        performSegue(withIdentifier: "displaySegue", sender: self)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

