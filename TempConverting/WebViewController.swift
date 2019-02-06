//
//  WebViewController.swift
//  TempConverting
//
//  Created by Samantha Cortopassi on 2/6/19.
//  Copyright © 2019 Samantha Cortopassi. All rights reserved.
//
import UIKit
import WebKit

class WebViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            let myURL = URL(string:"https://www.bignerdranch.com")
            let request = URLRequest(url: myURL!)
            webView.load(request)
        }
    
}

