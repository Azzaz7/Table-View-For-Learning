//
//  ViewController.swift
//  Table view print number
//
//  Created by azzaz on 3/28/18.
//  Copyright © 2018 azzaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITabBarDelegate , UITableViewDataSource {
    var arr1 = [1,2,3,4,5]
    var arr2 = [6,7,8,9,10]
    var sec = ["one" , "two"]
    
    
    // function to return number of section
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sec.count
    }
    
    //func to return number of rows in section
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0
        {
            return arr1.count
        }
        else
        {
            return arr2.count
        }
        
    }
    
    //func to print cell
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if indexPath.section == 0
        {
            cell.textLabel?.text = String(arr1[indexPath.row])
            return cell
            
        }
        else
        {
            cell.textLabel?.text = String(arr2[indexPath.row])
            return cell
        }
        
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "ASD"
    }
    
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0
        {
            return "from 1 to 5"
        }
        else
        {
            
            return "from 6 to 10"
        }
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

