//
//  DetailViewController.swift
//  Real-Time_Siddur
//
//  Created by Ezra Muskat on 8/26/19.
//  Copyright © 2019 Ezra Muskat. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    var webView: WKWebView!
    var zman: String = "Unknown"
    
    override func loadView() {
        webView = WKWebView()
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        let html = """
        <html>
        <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style> body { font-size: 150%; } </style>
        </head>
        <body>
        Some placeholder text for \(zman)
        </body>
        </html>
        """
        
        webView.loadHTMLString(html, baseURL: nil)
        // Do any additional setup after loading the view.
    }

}
