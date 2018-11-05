//
//  ViewController.swift
//  WKWhatsApp
//
//  Created by Scarlet on 4/11/2018.
//  Copyright © 2018 Scarlet. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        webView.customUserAgent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Safari/605.1.15"
        
        webView.load(URLRequest(url: URL(string: "https://web.whatsapp.com")!))
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.resignFirstResponder()
        
    }


}

