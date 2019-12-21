//
//  ChatPageViewController.swift
//  Whatsapp-IOS
//
//  Created by Amad Khan on 21/12/2019.
//  Copyright © 2019 cybermonkeys. All rights reserved.
//

import UIKit

class ChatPageViewController: UIViewController {

    @IBAction func BackButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    var listOfMessages = [["This is first message", true],
                          ["This is first reply", false],
                          ["This is second messagelorasfjnasjfnakjfnjkanskansjfnafnjk", true],
                          ["This is second reply", false],
                          ["This is third message", true],
                          ["This is third reply", false],
                          ["This is fourth reply", true],
                          ["This is fourth reply", false]
    ]
    
    
    @IBOutlet weak var NavBar: UINavigationBar!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let green = UIColor(red: 220/255, green: 248/255, blue: 198/255, alpha: 1)
        let white = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        var currHeight = 50
        for messageIndex in stride(from: 0,to: listOfMessages.count, by: 1){
            currHeight = currHeight + 20
            if(listOfMessages[messageIndex][1] as! Bool) {
                currHeight = showOutGoingMessage(color: green, text: listOfMessages[messageIndex][0] as! String, yPosition: CGFloat(currHeight)) + currHeight
            } else {
                currHeight = showIncomingMessage(color: white, text: listOfMessages[messageIndex][0] as! String, yPosition: CGFloat(currHeight)) + currHeight
            }
            
        }
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var ChatScrollView: UIScrollView!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func showOutGoingMessage(color: UIColor, text: String, yPosition: CGFloat) -> Int{
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .black
        label.text = text
        
        let constraintRect = CGSize(width: 0.66 * ChatScrollView.frame.width, height: .greatestFiniteMagnitude)
        
        let boundingBox = text.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [.font: label.font], context: nil)
        
        label.frame.size = CGSize(width: ceil(boundingBox.width), height: ceil(boundingBox.height))
        
        
        
        let bubbleImageSize = CGSize(width: label.frame.width + 28, height: label.frame.height + 20)
        
        let outgoingMessageView = UIImageView(frame:
            CGRect(x: ChatScrollView.frame.width - bubbleImageSize.width - 20,
                   y: ChatScrollView.frame.height - bubbleImageSize.height - yPosition,
                   width: bubbleImageSize.width,
                   height: bubbleImageSize.height))
        
        let bubbleImage = UIImage(named: "outgoing")?
        .resizableImage(withCapInsets: UIEdgeInsets(top: 17, left: 21, bottom: 17, right: 21),
                        resizingMode: .stretch).withRenderingMode(UIImage.RenderingMode.alwaysTemplate)
        outgoingMessageView.image = bubbleImage
        outgoingMessageView.tintColor = color
        ChatScrollView.addSubview(outgoingMessageView)
        
        label.center = outgoingMessageView.center
        ChatScrollView.addSubview(label)
        return Int(bubbleImageSize.height)
    }
    func showIncomingMessage(color: UIColor, text: String, yPosition: CGFloat) -> Int {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .black
        label.text = text
        
        let constraintRect = CGSize(width: 0.66 * ChatScrollView.frame.width, height: .greatestFiniteMagnitude)
        
        let boundingBox = text.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [.font: label.font], context: nil)
        
        label.frame.size = CGSize(width: ceil(boundingBox.width), height: ceil(boundingBox.height))
        

        let bubbleImageSize = CGSize(width: label.frame.width + 28, height: label.frame.height + 20)

        let incomingMessageView = UIImageView(frame:
            CGRect(x:  20,
                   y: ChatScrollView.frame.height - bubbleImageSize.height - yPosition,
                   width: bubbleImageSize.width,
                   height: bubbleImageSize.height))

        let bubbleImage = UIImage(named: "incoming")?
               .resizableImage(withCapInsets: UIEdgeInsets(top: 17, left: 21, bottom: 17, right: 21),
                               resizingMode: .stretch).withRenderingMode(UIImage.RenderingMode.alwaysTemplate)
        incomingMessageView.image = bubbleImage
        incomingMessageView.tintColor = color
        ChatScrollView.addSubview(incomingMessageView)
        
        label.center = incomingMessageView.center
        ChatScrollView.addSubview(label)
        return Int(bubbleImageSize.height)
    }

}
