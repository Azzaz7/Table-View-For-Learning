//
//  ReciveDataVC.swift
//  TasksApp
//
//  Created by azzaz on 4/6/18.
//  Copyright © 2018 azzaz. All rights reserved.
//

import UIKit

class ReciveDataVC: UIViewController {
  
    @IBOutlet weak var labelFirstName: UILabel!
    
    @IBOutlet weak var labelLastName: UILabel!

    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelAge: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

     if let usersArray  = CoreDataHandler.fetchData()
     {
        for item in usersArray{
            labelFirstName.text = item.firstName ?? ""
            labelLastName.text = item.lastName ?? ""
            labelAge.text = String(item.age)
            labelEmail.text = item.email ?? ""
        }
        
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
