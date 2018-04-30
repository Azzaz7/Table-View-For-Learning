//
//  ViewController.swift
//  TasksApp
//
//  Created by azzaz on 4/6/18.
//  Copyright © 2018 azzaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIPickerViewDelegate , UIPickerViewDataSource{
 var grender = ["mail" , "female"]
    @IBOutlet weak var txtFirst: UITextField!
    
    @IBOutlet weak var txtLast: UITextField!
    
    @IBOutlet weak var txtAge: UITextField!
    
    @IBOutlet weak var txtEmail: UITextField!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //Date Picker
   /* @IBAction func datePicker(_ sender: UIDatePicker) {
       let component = Calendar.current.component([.day , .month , .year], from: sender.date)
        
        
    }*/
    
    
    
    @IBAction func buDone(_ sender: UIBarButtonItem) {
   
        let parameters = [
            
            "firstName" :txtFirst.text ?? "" ,
            "lastName":txtLast.text ?? "" ,
            "Age" :txtAge.text ?? "",
            "Email":txtEmail.text ?? ""
        ]
        
        print( CoreDataHandler.saveData(parameters:parameters))
        
    let secondCV = storyboard?.instantiateViewController(withIdentifier: "TasksVC")
        navigationController?.pushViewController(secondCV!, animated: true)
    }


    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return grender.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return grender[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(grender[row])
    }

    
    
    
    
    

}

