//
//  foodTableViewCell.swift
//  UITableViewController Test
//
//  Created by D7703_06 on 2018. 5. 21..
//  Copyright © 2018년 IceArrow. All rights reserved.
//

import UIKit

class foodTableViewCell: UITableViewCell {

    @IBOutlet weak var foodcellimage: UIImageView!
    @IBOutlet weak var foodcellname: UILabel!
    @IBOutlet weak var foodcelladdress: UILabel!
    @IBOutlet weak var foodcelltel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
