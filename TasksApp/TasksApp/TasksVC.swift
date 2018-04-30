//
//  TasksVC.swift
//  TasksApp
//
//  Created by azzaz on 4/6/18.
//  Copyright © 2018 azzaz. All rights reserved.
//

import UIKit

class TasksVC: UIViewController {
    
    
    @IBOutlet weak var labelTaskName: UITextField!
    
    @IBOutlet weak var txtTaskDEsc: UITextView!
    
    @IBOutlet weak var buSave: UIButton!

    @IBAction func txtAction(_ sender: UITextField) {
        
        print(labelTaskName.text!)
    }
    @IBAction func saveTask(_ sender: UIButton) {
        
        
        
    }
    override func viewDidLoad() {
        buSave.layer.borderWidth = 3
       
       
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
