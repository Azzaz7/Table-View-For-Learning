//
//  ViewController.swift
//  DatePicker2
//
//  Created by azzaz on 4/11/18.
//  Copyright © 2018 azzaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController  , UIPickerViewDelegate{

    @IBOutlet weak var pikerDate1: UIDatePicker!
   
    @IBOutlet weak var label1: UILabel!
    
    /*
     let choosen = self.datePicker.date
     
     //create an NSDFormatter
     let formatter = DateFormatter()
     formatter.dateFormat = "EEEE"
     
     let day = formatter.string(for: choosen)
     //create alert
     let res = "the date is \(String(describing: day))"
     let myAlert = UIAlertController(title : res , message : nil  , preferredStyle : UIAlertControllerStyle.alert)
     
     
     //add ok button
     
     myAlert.addAction((title : "OK" , style : UIAlertActionStyle.default , handler : nil ))
     //show alert
     self.present(myAlert, animated: true, completion: nil)
     
     
     }

     */
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func pickerDateAction(_ sender: UIDatePicker) {
        let date = pikerDate1.date
     let formate = DateFormatter()
    formate.dateFormat = "EEEE"
        let day = formate.string(from: date)
        let res = "the date is \(String(day))"
        let myAlert = UIAlertController(title: res, message: nil, preferredStyle: UIAlertControllerStyle.alert)

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

