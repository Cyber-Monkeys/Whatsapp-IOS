//
//  CallsTableViewController.swift
//  Whatsapp-IOS
//
//  Created by Fidel Lim on 12/16/19.
//  Copyright © 2019 cybermonkeys. All rights reserved.
//

import UIKit

class CallsTableViewController: UITableViewController {
    
    //Array
    let users = [
        (photo: "corgi.jpg", name: "Fidel Lim", callIcon: "icons8-phone-30.png", callType: "Outgoing", time: "10:50 am"),
        (photo: "golden.jpg", name: "Fidel Lim", callIcon: "icons8-video-call-30.png", callType: "Outgoing", time: "10/10/2019"),
        (photo: "pug.jpg", name: "Fidel Lim", callIcon: "icons8-video-call-30.png", callType: "Missed", time: "10/10/2019"),
        (photo: "corgi.jpg", name: "Fidel Lim", callIcon: "icons8-phone-30.png", callType: "Outgoing", time: "10:50 am"),
        (photo: "golden.jpg", name: "Fidel Lim", callIcon: "icons8-video-call-30.png", callType: "Outgoing", time: "10/10/2019"),
        (photo: "pug.jpg", name: "Fidel Lim", callIcon: "icons8-video-call-30.png", callType: "Missed", time: "10/10/2019"),
        (photo: "corgi.jpg", name: "Fidel Lim", callIcon: "icons8-phone-30.png", callType: "Outgoing", time: "10:50 am"),
        (photo: "golden.jpg", name: "Fidel Lim", callIcon: "icons8-video-call-30.png", callType: "Outgoing", time: "10/10/2019"),
        (photo: "pug.jpg", name: "Fidel Lim", callIcon: "icons8-video-call-30.png", callType: "Missed", time: "10/10/2019"),
    ]
    
    //set nav title to large heading
    func setupNavBar(){
        navigationController?.navigationBar.prefersLargeTitles = true
        
        //search bar
        let searchController = UISearchController(searchResultsController: nil)
        navigationItem.searchController = searchController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavBar()
        self.navigationItem.leftBarButtonItem = self.editButtonItem
        
        //create button for right bar
        let button = UIButton(type: .custom)
        //set image for button
        button.setImage(UIImage(named: "icons8-add-phone-20.png")?.withTintColor(UIColor.systemBlue), for: .normal)
        //set frame
        button.frame = CGRect(x: 0, y: 0, width: 20, height: 20)

        let barButton = UIBarButtonItem(customView: button)
        //assign button to navigationbar
        
        self.navigationItem.rightBarButtonItem = barButton
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return users.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        as! CallsTableViewCell

       
        cell.myPhoto.image = UIImage(named: users[indexPath.row].photo)
        cell.myCallIconType.image = UIImage(named: users[indexPath.row].callIcon)?.withTintColor(UIColor.systemGray)
        cell.myName.text = users[indexPath.row].name
        cell.myTiming.text = users[indexPath.row].time
        cell.myCallType.text = users[indexPath.row].callType
        
        return cell
    }

}
