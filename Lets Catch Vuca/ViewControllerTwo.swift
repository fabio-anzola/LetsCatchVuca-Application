//
//  ViewControllerTwo.swift
//  Lets Catch Vuca
//
//  Created by Fabio Anzola on 12.01.20.
//  Copyright © 2020 Fabio Anzola. All rights reserved.
//

import Foundation
import UIKit
import MessageUI

class ViewControllerTwo: UIViewController, MFMailComposeViewControllerDelegate, UINavigationControllerDelegate {
    
    @IBAction func mailButton(_ sender: Any) {
        
        if MFMailComposeViewController.canSendMail() {
              let message:String  = "Message sent from Let's Catch Vuca App \n Type message below this line: \n"
            let composePicker = MFMailComposeViewController()
            composePicker.mailComposeDelegate = self
            composePicker.delegate = self
            composePicker.setToRecipients(["administrator@catchvuca.com", "fabio.anzola@htl.rennweg.at"])
            composePicker.setSubject("Mail sent from IOS LCV App")
            composePicker.setMessageBody(message, isHTML: false)
             self.present(composePicker, animated: true, completion: nil)

          } else {

              print("Something went wrong :(")

          }
        
    }
    
}
