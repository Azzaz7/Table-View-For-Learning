//
//  ViewController.swift
//  PickeddData
//
//  Created by azzaz on 3/23/18.
//  Copyright © 2018 azzaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController  , UIPickerViewDelegate , UIPickerViewDataSource{
    
    
//    
    let moodArray = ["azzaz" , "adel" , "Sameh" , "Zezo"]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        
        return 1
        
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return moodArray.count
    }
  
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return moodArray[row]
    }
    
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var newColor = UIColor()
        switch row {
        case 0 :
            newColor = UIColor.blue
        case 1 :
            newColor = UIColor.brown
        
        case 2 :
            newColor = UIColor.red
        case 3 :
            
        newColor = UIColor.darkGray
        
        default:
        newColor = UIColor.green
                }
        
        self.view.backgroundColor = newColor
        
        
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

