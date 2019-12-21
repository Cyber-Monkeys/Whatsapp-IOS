//
//  SettingTableViewCell.swift
//  Whatsapp-IOS
//
//  Created by Amad Khan on 19/12/2019.
//  Copyright © 2019 cybermonkeys. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {
    
    @IBOutlet weak var settingsImageView: UIImageView!
    
    @IBAction func SettingsButtonPressed(_ sender: Any) {
    }
    @IBOutlet weak var SettingsTextLabel: UILabel!
    
    
    @IBAction func SettingsSelected(_ sender: Any) {
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
