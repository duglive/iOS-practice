//
//  ViewController.swift
//  InTouch
//
//  Created by Саид Дагалаев on 29.12.2019.
//  Copyright © 2019 Саид Дагалаев. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController, MFMessageComposeViewControllerDelegate, MFMailComposeViewControllerDelegate {
    
    @IBAction func sendEmai(_ sender: Any) {
        if MFMailComposeViewController.canSendMail() {
            let mailVC = MFMailComposeViewController()
            mailVC.setSubject("MySubject")
            mailVC.setToRecipients(["duglive@ya.ru"])
            mailVC.setMessageBody("<p>Hello!</p>", isHTML: true)
            mailVC.mailComposeDelegate = self
            
            self.present(mailVC, animated: true, completion: nil)
        } else {
            print("This device is currently unable to send email")
        }
    }
    
    @IBAction func sendText(_ sender: Any) {
        if MFMessageComposeViewController.canSendText() {
            let smsVC : MFMessageComposeViewController = MFMessageComposeViewController()
            smsVC.messageComposeDelegate = self
            smsVC.recipients = ["+79991270397"]
            smsVC.body = "Please call me back."
            
            self.present(smsVC, animated: true, completion: nil)
        } else {
            print("This device is currently unable to send text messages")
        }
    }
    
    @IBAction func openWebsite(_ sender: Any) {
        UIApplication.shared.open(URL(string: "http://hse.ru")!, options: [:], completionHandler: nil)
    }
    
    func mailComposeController(_ didFinishWithcontroller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: NSError?) {
        switch result {
            case MFMailComposeResult.sent:
                print("Result: Email Sent!")
            case MFMailComposeResult.cancelled:
                print("Result: Email Cancelled.")
            case MFMailComposeResult.failed:
                print("Result: Error, Unable to Send Email.")
            case MFMailComposeResult.saved:
                print("Result: Mail Saved as Draft.")
        }
        
        self.dismiss(animated: true, completion: nil)
    }
    
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        switch result {
            case MessageComposeResult.sent:
                print("Result: Text Message Sent!")
            case MessageComposeResult.cancelled:
                print("Result: Text Message Cancelled.")
            case MessageComposeResult.failed:
                print("Result: Error, Unable to Send Text Message.")
            
        }
        
        self.dismiss(animated:true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

