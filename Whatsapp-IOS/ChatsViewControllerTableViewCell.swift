//
//  ChatsViewControllerTableViewCell.swift
//  Whatsapp-IOS
//
//  Created by Fidel Lim on 12/16/19.
//  Copyright © 2019 cybermonkeys. All rights reserved.
//

import UIKit

class ChatsViewControllerTableViewCell: UITableViewCell {
    
    @IBOutlet weak var myMessage: UILabel!
    @IBOutlet weak var myDate: UILabel!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        myImage.layer.cornerRadius = myImage.frame.size.width/2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
