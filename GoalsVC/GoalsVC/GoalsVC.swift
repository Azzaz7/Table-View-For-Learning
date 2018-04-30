//
//  ViewController.swift
//  GoalsVC
//
//  Created by azzaz on 4/10/18.
//  Copyright © 2018 azzaz. All rights reserved.
//

import UIKit
import CoreData

class GoalsVC: UIViewController ,UITableViewDataSource , UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard  let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else {return UITableViewCell ()}
        cell.configureCell(description: "Eat Salad Twince Aweek", type: "Short Term ", goalProgress: 2)
        return cell
    }

    @IBOutlet var tableView1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    @IBAction func addGoalButtonWzPressed(_ sender: UIButton) {
        
        
        print("Button Is pressed")
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    
}








