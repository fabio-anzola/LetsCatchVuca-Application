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

        }
        else {
            showerrorMessage();
            print("Something went wrong :(")
            
        }
    }
    
    @IBAction func telButton(_ sender: Any) {
//        Woring phone-call code
//        guard let number = URL(string: "tel://" + "000000000000") else { return }
//        UIApplication.shared.open(number)
        
        let infoMessage = UIAlertController(title: "Coming soon!", message: "Sorry! We currently do not have a phone number. Please contact us via email.", preferredStyle: UIAlertController.Style.alert)
        
        let action = UIAlertAction(title:"Okay", style: UIAlertAction.Style.default, handler: nil)
        infoMessage.addAction(action)
        
        self.present(infoMessage, animated: true, completion: nil)
    }
    
    func showerrorMessage() {
        let alertMessage = UIAlertController(title: "Error during this action", message: "Please check if your device has this functionality!", preferredStyle: UIAlertController.Style.alert)
        
        let action = UIAlertAction(title:"Okay", style: UIAlertAction.Style.default, handler: nil)
        alertMessage.addAction(action)
        
        self.present(alertMessage, animated: true, completion: nil)
    }
    
}
