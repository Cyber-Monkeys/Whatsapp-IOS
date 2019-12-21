//
//  SettingsProfileCellTableViewCell.swift
//  Whatsapp-IOS
//
//  Created by Amad Khan on 01/01/2019.
//  Copyright © 2019 cybermonkeys. All rights reserved.
//

import UIKit

class SettingsProfileCellTableViewCell: UITableViewCell {

    
    @IBOutlet weak var SettingsProfileIcon: UIImageView!
    
    @IBOutlet weak var ProfileName: UILabel!
    
    @IBOutlet weak var ProfileStatus: UILabel!
    
    
    @IBAction func ProfileButtonPressed(_ sender: Any) {
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        SettingsProfileIcon.layer.cornerRadius = SettingsProfileIcon.frame.size.width/2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
