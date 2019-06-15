//
//  TrafficLights.swift
//  Task
//
//  Created by Horbach on 6/9/19.
//  Copyright © 2019 Horbach. All rights reserved.
//

import UIKit

class TrafficLights: UIViewController {

    @IBOutlet weak var labelButtonRed: UIButton!
    
    @IBOutlet weak var labelButtonYellow: UIButton!
    
    @IBOutlet weak var labelButtonGreen: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ColorButton()
        // Do any additional setup after loading the view.
        
    }
    
    func ColorButton() {
        labelButtonRed.layer.cornerRadius = 3
        labelButtonRed.layer.borderWidth = 3
        labelButtonRed.layer.borderColor = UIColor.magenta.cgColor
        
        labelButtonYellow.layer.cornerRadius = 3
        labelButtonYellow.layer.borderWidth = 3
        labelButtonYellow.layer.borderColor = UIColor.orange.cgColor
        
        labelButtonGreen.layer.cornerRadius = 3
        labelButtonGreen.layer.borderWidth = 3
        labelButtonGreen.layer.borderColor = UIColor.green.cgColor
        
    }
    @IBAction func ButtonRed(_ sender: Any) {
        
    }
    
    @IBAction func ButtonYellow(_ sender: Any) {
        
    }
    
    @IBAction func ButtonGreen(_ sender: Any) {
        
    }
    

}

