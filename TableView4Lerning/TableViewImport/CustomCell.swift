//
//  CustomCell.swift
//  TableViewImport
//
//  Created by azzaz on 4/15/18.
//  Copyright © 2018 azzaz. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var labelSub: UILabel!
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var imgCell: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
