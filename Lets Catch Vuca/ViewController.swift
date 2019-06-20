//
//  ViewController.swift
//  Lets Catch Vuca
//
//  Created by Fabio Anzola on 19.06.19.
//  Copyright © 2019 Fabio Anzola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var currentTab: UILabel!
    
    override func viewDidLoad() {
        Thread.sleep(forTimeInterval: 1.0)
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func homeButton(_ sender: Any) {
//        print("home pressed")
        currentTab.text = "Home"
    }
    @IBAction func blogsButton(_ sender: Any) {
//        print("blogs pressed")
        currentTab.text = "Blogs"
    }
    @IBAction func loginButton(_ sender: Any) {
//        print("login pressed")
        currentTab.text = "Login"
    }
    @IBAction func infoButton(_ sender: Any) {
//        print("info pressed")
        currentTab.text = "Info"
    }
    

}

