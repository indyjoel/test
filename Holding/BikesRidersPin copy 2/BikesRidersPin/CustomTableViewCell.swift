//
//  CustomTableViewCell.swift
//  BikesRidersPin
//
//  Created by IndyJCL on 18/03/2015.
//  Copyright (c) 2015 JCL. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var teamLabel: UILabel!
    @IBOutlet weak var bikeLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
