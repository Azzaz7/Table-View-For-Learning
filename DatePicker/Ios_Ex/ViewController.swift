//
//  ViewController.swift
//  Ios_Ex
//
//  Created by azzaz on 3/22/18.
//  Copyright © 2018 azzaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    
    @IBAction func disPlayDate(_ sender: Any) {
        //define var selected from datePicker;
        let choosen = self.datePicker.date
        
        //create an NSDFormatter
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE"
        
        let day = formatter.string(for: choosen)
        //create alert
        let res = "the date is \(String(describing: day))"
        let myAlert = UIAlertController(title : res , message : nil  , preferredStyle : UIAlertControllerStyle.alert)
      
        
        //add ok button
      
        myAlert.addAction(UIAlertAction (title : "OK" , style : UIAlertActionStyle.default , handler : nil ))
        //show alert
        self.present(myAlert, animated: true, completion: nil)
        
    
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

