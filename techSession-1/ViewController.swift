//
//  ViewController.swift
//  techSession-1
//
//  Created by GI on 9/1/17.
//  Copyright © 2017 GI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var addButton: UIButton!
    var digit = 0
    var toggle = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Label.text = "\(digit)";
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func add(_ sender: AnyObject) {
        //toggle the button title
        if digit <= 0 {
            addButton.setTitle("ADD", for: .normal);
            addButton.setTitle("ADD", for: .focused);
            addButton.setTitle("ADD", for: .highlighted);
            addButton.setTitle("ADD", for: .selected);
            addButton.setTitle("ADD", for: .disabled);
            toggle = true
        }else if digit >= 10{
            addButton.titleLabel?.text = "Substract"
            toggle = false
            addButton.setTitle("SUBSTRACT", for: .normal);
            addButton.setTitle("SUBSTRACT", for: .focused);
            addButton.setTitle("SUBSTRACT", for: .highlighted);
            addButton.setTitle("SUBSTRACT", for: .selected);
            addButton.setTitle("SUBSTRACT", for: .disabled);
        }
        
        if toggle {
            digit = digit + 1
        }else{
            digit = digit - 1
        }
        
        Label.text = "\(digit)";
    }

}

