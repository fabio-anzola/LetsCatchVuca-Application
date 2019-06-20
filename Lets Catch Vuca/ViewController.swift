//
//  ViewController.swift
//  Lets Catch Vuca
//
//  Created by Fabio Anzola on 19.06.19.
//  Copyright © 2019 Fabio Anzola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        Thread.sleep(forTimeInterval: 1.0)
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func homeButton(_ sender: Any) {
        print("home pressed")
    }
    @IBAction func blogsButton(_ sender: Any) {
        print("blogs pressed")
    }
    @IBAction func loginButton(_ sender: Any) {
        print("login pressed")
    }
    @IBAction func infoButton(_ sender: Any) {
        print("info pressed")
    }
    

}

