//
//  ChatsViewController.swift
//  Whatsapp-IOS
//
//  Created by Fidel Lim on 12/16/19.
//  Copyright © 2019 cybermonkeys. All rights reserved.
//

import UIKit

class ChatsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    //to set border line
    @IBOutlet weak var myHeaderView: UIView!
    
    let users = [
        (photo: "321.jpeg",
         title: "We all are gone die",
         senderName: "Humaid: ",
         message: "dsdsdsdfff ffdddffffffffffff ffffffddddddddddddddd dddddddffffffffffffffffffffffffffffffffdddddddddsdds",
         date: "10:44 pm"),
        
        (photo: "golden.jpg",
        title: "Discord",
        senderName: "Leonardinho: ",
        message: "Woaaaaaaaah",
        date: "8:44 pm"),
        
        (photo: "corgi.jpg",
        title: "314 pls help",
        senderName: "Arwa: ",
        message: "Aghhhhhhhhhhhhhh",
        date: "6:44 pm"),
        
        (photo: "leonardo.jpeg",
        title: "This message was deleted",
        senderName: "Gete: ",
        message: "Shuhssssssssshhhhhh",
        date: "Yesterday"),
        
        (photo: "pug.jpg",
        title: "Island Express",
        senderName: "Driver: ",
        message: "I am here now",
        date: "Yesterday"),
        
        (photo: "golden.jpg",
        title: "Blackpink",
        senderName: "Lisa: ",
        message: "BLACKKKKKKKPINK",
        date: "Yesterday"),
        
        (photo: "pug.jpg",
        title: "John Cena",
        senderName: "",
        message: "You can't see me",
        date: "Sunday"),
        
        (photo: "golden.jpg",
        title: "Roger Yup",
        senderName: "",
        message: "Techical!!!!! You have fouled meeeeeee~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~",
        date: "Saturday"),
        
        (photo: "pug.jpg",
        title: "*Blocked*",
        senderName: "",
        message: "Can I borrow your assignment",
        date: "Saturday"),
        
        (photo: "corgi.jpg",
        title: "Stephen Curry",
        senderName: "",
        message: "Philippians 4:13",
        date: "Saturday"),
        
        (photo: "golden.jpg",
        title: "Lebron James",
        senderName: "",
        message: "...",
        date: "Wednesday"),
    ]
    
    func numberOfSections(in tableView: UITableView) -> Int { return 1 }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
            as! ChatsViewControllerTableViewCell
        
        cell.myImage.image = UIImage(named: users[indexPath.row].photo)
        cell.myLabel.text = users[indexPath.row].title
        cell.myDate.text = users[indexPath.row].date
        cell.myMessage.text = users[indexPath.row].senderName + users[indexPath.row].message
        
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //for left bar button
        let addButton = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: nil)
        self.navigationItem.leftBarButtonItem = addButton
        
        //create a button for rightBar
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
        
        //search bar
        let searchController = UISearchController(searchResultsController: nil)
        navigationItem.searchController = searchController
    }

}
