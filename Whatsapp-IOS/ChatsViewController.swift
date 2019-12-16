//
//  ChatsViewController.swift
//  Whatsapp-IOS
//
//  Created by Fidel Lim on 12/16/19.
//  Copyright © 2019 cybermonkeys. All rights reserved.
//

import UIKit

class ChatsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
  
    @IBOutlet weak var myHeaderView: UIView!
    
    let users = [
        (senderName: "Fidel Lim", message: "dsdsdsdffffffffffffffffffffffffffffffffffffffffffffffffffff\nfffdsdds", date: "10:44 am"),
        (senderName: "Fidel Lim", message: "dsdsdsdsds", date: "10:44 am"),
        (senderName: "Fidel Lim", message: "dsdsdsdsds", date: "10:44 am"),
        (senderName: "Fidel Lim", message: "dsdsdsdsds", date: "10:44 am"),
        (senderName: "Fidel Lim", message: "dsdsdsdsds", date: "10:44 am"),
        (senderName: "Fidel Lim", message: "dsdsdsdsds", date: "10:44 am"),
        (senderName: "Fidel Lim", message: "dsdsdsdsds", date: "10:44 am"),
        (senderName: "Fidel Lim", message: "dsdsdsdsds", date: "10:44 am"),
        (senderName: "Fidel Lim", message: "dsdsdsdsds", date: "10:44 am"),
        (senderName: "Fidel Lim", message: "dsdsdsdsds", date: "10:44 am"),
        (senderName: "Fidel Lim", message: "dsdsdsdsds", date: "10:44 am"),
        (senderName: "Fidel Lim", message: "dsdsdsdsds", date: "10:44 am"),
        (senderName: "Fidel Lim", message: "dsdsdsdsds", date: "10:44 am"),
        (senderName: "Fidel Lim", message: "dsdsdsdsds", date: "10:44 am"),
        (senderName: "Fidel Lim", message: "dsdsdsdsds", date: "10:44 am")
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
            as! ChatsViewControllerTableViewCell
        
        cell.myImage.image = UIImage(named: "corgi.jpg")
        cell.myLabel.text = users[indexPath.row].senderName
        cell.myDate.text = users[indexPath.row].date
        cell.myMessage.text = users[indexPath.row].message
        
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int { return 1 }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let addButton = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: nil)
        self.navigationItem.leftBarButtonItem = addButton
        
        //create a new button
        let button = UIButton(type: .custom)
        //set image for button
        button.setImage(UIImage(named: "icons8-create-20.png")?.withTintColor(UIColor.systemBlue), for: .normal)
        //set frame
        button.frame = CGRect(x: 0, y: 0, width: 20, height: 20)

        let barButton = UIBarButtonItem(customView: button)
        //assign button to navigationbar
        
        self.navigationItem.rightBarButtonItem = barButton
        
        //set border of UIView
        myHeaderView.layer.borderWidth = 0.25
        myHeaderView.layer.borderColor = UIColor.lightGray.cgColor
        
        setupNavBar()
    }
    
    //set nav title to large heading
    func setupNavBar(){
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let searchController = UISearchController(searchResultsController: nil)
        navigationItem.searchController = searchController
    }

}
