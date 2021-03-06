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
    
    var text: Text?
    
    
    override func loadView() {
        webView = WKWebView()
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString: String = "https://www.sefaria.org/api/texts/Siddur_Ashkenaz%2C_Weekday%2C_Shacharit%2C_Concluding_Prayers%2C_Shir_shel_Yom"
        
        if let url = URL(string: urlString) {
            if let data = try? Data(contentsOf: url) {
                parse(json: data)
                
            }
        }
        guard let text = text else {return}
        
        let html = """
        <html>
        <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style> body { font-size: 150%; } </style>
        </head>
        <h1>
        Test header
        </h1>
        <body>
        \(text.he[0])
        </body>
        </html>
        """
        
        webView.loadHTMLString(html, baseURL: nil)
        // Do any additional setup after loading the view.
    }
    
    func parse(json: Data) {
        let decoder = JSONDecoder()
        print("Will Stuff happen?")
        if let jsonTexts = try? decoder.decode(Text.self, from: json) {
            print("Stuff happened")
            text = jsonTexts
            webView.reload()
        } else {
            print("Nothing happened...")
        }
    }

}
