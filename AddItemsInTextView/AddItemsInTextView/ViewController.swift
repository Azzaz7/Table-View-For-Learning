//
//  ViewController.swift
//  AddItemsInTextView
//
//  Created by azzaz on 4/11/18.
//  Copyright © 2018 azzaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var items : [String] = []
    
    @IBOutlet weak var txtInput: UITextField!
    
    @IBOutlet weak var txtOutput: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonAdd(_ sender: UIButton) {
   
       
        items.append(txtInput.text!)
        
        txtOutput.text = ""
        
    for item in items
    {
        txtOutput.text.append(item + "\n")
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

