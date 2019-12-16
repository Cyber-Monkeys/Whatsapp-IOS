//
//  CallsTableViewCell.swift
//  Whatsapp-IOS
//
//  Created by Fidel Lim on 12/16/19.
//  Copyright © 2019 cybermonkeys. All rights reserved.
//

import UIKit

class CallsTableViewCell: UITableViewCell {

    @IBOutlet weak var myPhoto: UIImageView!
    @IBOutlet weak var myCallIconType: UIImageView!
    @IBOutlet weak var myName: UILabel!
    @IBOutlet weak var myCallType: UILabel!
    @IBOutlet weak var myTiming: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        myPhoto.layer.cornerRadius = myPhoto.frame.size.width/2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
