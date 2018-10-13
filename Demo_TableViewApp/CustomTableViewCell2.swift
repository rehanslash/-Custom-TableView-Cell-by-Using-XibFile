//
//  CustomTableViewCell2.swift
//  Demo_TableViewApp
//
//  Created by HigherVisibility on 21/09/2018.
//  Copyright © 2018 ahmedHigherVisibility. All rights reserved.
//

import UIKit

class CustomTableViewCell2: UITableViewCell {

    
    @IBOutlet weak var imageView2: UIImageView!
    
    @IBOutlet weak var name2: UILabel!
    
    @IBOutlet weak var Fname2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
