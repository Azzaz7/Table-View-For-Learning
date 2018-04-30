//
//  ThirdViewControler.swift
//  Tapped App
//
//  Created by azzaz on 3/28/18.
//  Copyright © 2018 azzaz. All rights reserved.
//

import UIKit

class ThirdViewControler: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        print("appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("disappear")
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
