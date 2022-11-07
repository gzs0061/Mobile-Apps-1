//
//  ViewController.swift
//  module3
//
//  Created by Gabriella Seaman on 10/29/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        sec.isHidden = false
        au.isHidden = true
        roll.isHidden = true
        
    }

    
    @IBOutlet weak var sec: UIImageView!
    
    @IBOutlet weak var au: UIImageView!
    
    
    @IBOutlet weak var roll: UIImageView!
    
    @IBAction func warbtn(_ sender: UIButton) {
        
        au.isHidden = false
        sec.isHidden = true
        roll.isHidden = true
        
        
    }
    @IBAction func secbtn(_ sender: UIButton) {
        sec.isHidden = false
        au.isHidden = true
        roll.isHidden = true
    
    }
    
    @IBAction func rolltidebtn(_ sender: UIButton) {
        roll.isHidden = false
        au.isHidden = true
        sec.isHidden = true
        
    }
    
}

