//
//  ViewController.swift
//  ControlDemo
//
//  Created by azzaz on 3/23/18.
//  Copyright © 2018 azzaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController  , UITableViewDataSource ,UITableViewDelegate{
    
    var array = ["azzaz" , "fayez"]  // firest array for firest section string
    var array2 = ["1" , "2"]     //function to return number of section
    var sec =  ["asd" , "asd2"]
    
    func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int {
        return sec.count
    }
    //function to return number of rows in each section
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0
        {
            return array.count
        }
        else
        {
            return array2.count
        }
        
    }
    //func to print each cell
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for : indexPath)
        
        if indexPath.section == 0
        {
            cell.textLabel?.text = array[indexPath.row]
            return cell
        }
        else
        {
            cell.textLabel?.text = array2[indexPath.row]
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0
        {return "Names"
        }
        else  {
            return "Numbers"
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

