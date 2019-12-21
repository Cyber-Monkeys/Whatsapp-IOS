//
//  SettingsTableViewController.swift
//  Whatsapp-IOS
//
//  Created by Amad Khan on 19/12/2019.
//  Copyright © 2019 cybermonkeys. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {

    var listOfTitles = [[""],["Starred Messages", "Whatsapp Web/Desktop"], ["Account", "Chat", "Notifications", "Data and Storage Usage"], ["Help", "Tell a friend"]]
    
    var listOfIcons = [[""], ["star.fill", "desktopcomputer"], ["lock", "phone.circle", "square", "repeat"],["info", "heart"]]
    
    var headerTitles = ["Settings", " ", " ", " "]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return listOfTitles.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listOfTitles[section].count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.section == 0) {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsProfileCell", for: indexPath) as? SettingsProfileCellTableViewCell else{
                fatalError("The dequeued cell is not an instance of SettingsProfileCell")
            }
            cell.SettingsProfileIcon.image = UIImage.init(named: "pug")
            cell.ProfileName.text = "Fidellito"
            cell.ProfileStatus.text = "Drill some treys, splash *"
            return cell
        } else {
             guard let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsCell", for: indexPath) as? SettingTableViewCell else{
                   fatalError("The dequeued cell is not an instance of SettingsProfileCell")
               }
            cell.settingsImageView.image = UIImage(systemName: listOfIcons[indexPath.section][indexPath.row])?.withAlignmentRectInsets(UIEdgeInsets(top: -3, left: -3, bottom: -3, right: -3)).withRenderingMode(.alwaysTemplate)
            if(indexPath.section == 1 && indexPath.row == 0) {
                cell.settingsImageView.backgroundColor =  UIColor(red: 252/255, green: 216/255, blue: 35/255, alpha: 1)
            } else if(indexPath.section == 1 && indexPath.row == 1) {
                cell.settingsImageView.backgroundColor =  UIColor(red: 0/255, green: 128/255, blue: 128/255, alpha: 1)
            } else if(indexPath.section == 2 && indexPath.row == 0) {
                cell.settingsImageView.backgroundColor =  UIColor(red: 11/255, green: 77/255, blue: 163/255, alpha: 1)
            } else if(indexPath.section == 2 && indexPath.row == 1) {
                cell.settingsImageView.backgroundColor =  UIColor(red: 72/255, green: 232/255, blue: 44/255, alpha: 1)
            } else if(indexPath.section == 2 && indexPath.row == 2) {
                cell.settingsImageView.backgroundColor =  UIColor(red: 204/255, green: 45/255, blue: 20/255, alpha: 1)
            } else if(indexPath.section == 2 && indexPath.row == 3) {
                cell.settingsImageView.backgroundColor =  UIColor(red: 72/255, green: 232/255, blue: 44/255, alpha: 1)
            } else if(indexPath.section == 3 && indexPath.row == 0) {
                cell.settingsImageView.backgroundColor =  UIColor(red: 20/255, green: 218/255, blue: 204/255, alpha: 1)
            } else if(indexPath.section == 3 && indexPath.row == 1) {
                cell.settingsImageView.backgroundColor =  UIColor(red: 204/255, green: 20/255, blue: 94/255, alpha: 1)
            }
            
            cell.settingsImageView.tintColor = .white
            cell.SettingsTextLabel.text = listOfTitles[indexPath.section][indexPath.row]
            return cell
        }
        // Configure the cell...
        
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(indexPath.section == 0){
            return 80
        } else{
            return 60
        }
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return headerTitles[section]
    }
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if(section == 0) {
            let label = UILabel()
            label.frame = CGRect(x: 20, y: 15, width: 320, height: 40)
            label.font = UIFont.boldSystemFont(ofSize: 30)
            label.text = "Settings"
            
            let headerView = UIView()
            headerView.addSubview(label)
            return headerView
        }
        return UIView()
    }

   
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
