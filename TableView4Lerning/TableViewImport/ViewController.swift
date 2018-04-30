//
//  ViewController.swift
//  TableViewImport
//
//  Created by azzaz on 4/14/18.
//  Copyright © 2018 azzaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource , UITableViewDelegate{
    let data : [[String]] = [["Item 1" , "Item 2" , "Item 3"],
                             ["Item A" , "Item B" , "Item C"]]
    let subTitle : [[String]] = [["sub 1" , "sub 2" , "sub 3"],
                                 ["sub A" , "sub B" , "Item C"]]
    let header : [String] = ["Numbers" ,"Character"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return header[section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
        cell.label1?.text = data[indexPath.section][indexPath.row]
        cell.labelSub.text = subTitle[indexPath.section][indexPath.row]
        cell.imgCell.image = UIImage(named: "star-1")
        return cell
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(data[indexPath.section][indexPath.row])")
    }
   



}

