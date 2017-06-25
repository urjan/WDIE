//
//  displayChoiceScreen.swift
//  WDIE
//
//  Created by Urja Nadibail on 6/24/17.
//  Copyright © 2017 Urja Nadibail. All rights reserved.
//

import UIKit

class displayChoiceScreen: UIViewController {
    
    @IBOutlet weak var acceptButton: UIButton!
    @IBOutlet weak var deniedButton: UIButton!
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    var optionsArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        populateOptions()
        displayOption()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
//    @IBAction func goToMainScreen(_ sender: Any) {
//                performSegue(withIdentifier: "displaySegue", sender: self)
//        
//    }
    
    
    @IBAction func DeniedAction(_ sender: Any) {
        displayOption()
        self.viewDidLoad()
    }
    
    func populateOptions() {
        optionsArray.append("Indian Food truck")
        optionsArray.append("Chipotle")
        optionsArray.append("Subway")
        optionsArray.append("Gyro Food truck")
        optionsArray.append("Crepe truck")
        optionsArray.append("Blaze pizza")
        optionsArray.append("Spice end")
        optionsArray.append("Agno")
        optionsArray.append("Tarka")
        optionsArray.append("Sitar")
        optionsArray.append("Axis pizza")
        optionsArray.append("Cosi")
        optionsArray.append("Wawa")
        optionsArray.append("Shake shack")
        optionsArray.append("New Delhi")
        optionsArray.append("Han Dynasty")
        optionsArray.append("Lemon Grass")
        
    }
    
    func displayOption() {
        var lower = 0
        var upper = optionsArray.count
        var randNumber = lower + Int(arc4random_uniform(UInt32(upper - (lower + 1))))
        
        var displayOptionString = optionsArray[randNumber]
        displayLabel.text = displayOptionString
        acceptButton.isHidden = true
        
        
        
    }
    
    
    
    
}
