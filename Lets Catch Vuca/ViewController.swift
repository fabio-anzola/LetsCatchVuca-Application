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
    let requestLogin = URLRequest(url: URL(string: "https://www.catchvuca.com/ghost/#/signin")!)
    let instagramApp = UIApplication.shared
    
    override func viewDidLoad() {
        Thread.sleep(forTimeInterval: 1.0)
        super.viewDidLoad()
        webScreen.load(requestHome)
        removeHeader();
        // Do any additional setup after loading the view.
    }
    @IBAction func homeButton(_ sender: Any) {
        currentTab.text = "Home"
//        print("home pressed")
//        webScreen?.load(requestHome)
        if (webScreen.url == URL(string: "https://www.catchvuca.com/")) {
            removeHeader();
        } else {
            webScreen.load(requestHome)
        }
    }
    @IBAction func blogsButton(_ sender: Any) {
        if (UIApplication.shared.canOpenURL(URL(string: "instagram://user?username=catchvuca")!)) {
            instagramApp.open(URL(string: "instagram://user?username=catchvuca")!)
        } else {
            let webURL = URL(string: "https://instagram.com/catchvuca")!
            instagramApp.open(webURL)
        }
    }
    @IBAction func loginButton(_ sender: Any) {
//        print("login pressed")
        webScreen?.load(requestLogin)
        currentTab.text = "Login"
    }
    
    func removeHeader() {
        let js = "document.getElementsByTagName(\"header\")[0].style.display='none';"
        webScreen.evaluateJavaScript(js)
    }
}

