//
//  ViewController.swift
//  Lets Catch Vuca
//
//  Created by Fabio Anzola on 19.06.19.
//  Copyright © 2019 Fabio Anzola. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var currentTab: UILabel!
    @IBOutlet weak var webScreen: WKWebView!
    
    let requestHome = URLRequest(url: URL(string: "https://www.catchvuca.com/")!)
    let requestBlog = URLRequest(url: URL(string: "https://www.catchvuca.com/aktuelle-blogs/")!)
    let requestLogin = URLRequest(url: URL(string: "https://www.catchvuca.com/dashboard/")!)
    let requestInfo = URLRequest(url: URL(string: "https://www.catchvuca.com/impressum/")!)
    
    override func viewDidLoad() {
        Thread.sleep(forTimeInterval: 1.0)
        super.viewDidLoad()
        webScreen?.load(requestHome)
        // Do any additional setup after loading the view.
    }
    @IBAction func homeButton(_ sender: Any) {
//        print("home pressed")
        webScreen?.load(requestHome)
        currentTab.text = "Home"
    }
    @IBAction func blogsButton(_ sender: Any) {
//        print("blogs pressed")
        webScreen?.load(requestBlog)
        currentTab.text = "Blogs"
    }
    @IBAction func loginButton(_ sender: Any) {
//        print("login pressed")
        webScreen?.load(requestLogin)
        currentTab.text = "Login"
    }
    @IBAction func infoButton(_ sender: Any) {
//        print("info pressed")
        webScreen?.load(requestInfo)
        currentTab.text = "Info"
    }
    

}

