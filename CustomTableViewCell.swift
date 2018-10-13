//
//  CustomTableViewCell.swift
//  Demo_TableViewApp
//
//  Created by HigherVisibility on 21/09/2018.
//  Copyright © 2018 ahmedHigherVisibility. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblname: UILabel!
    
    @IBOutlet weak var lblFname: UILabel!
    
    @IBOutlet weak var CustomimageView:
    UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
