//
//  ViewController.swift
//  kBox
//
//  Created by Korhan Özbek on 20.06.2016.
//  Copyright © 2016 korhanozbek.com. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController {


    @IBOutlet weak var webView: WebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let strUrl = "https://app.gistBoxapp.com"
        connectWebPage(strUrl)
        
    }
    
    
    func connectWebPage(_ urlStr: String) {
        let url = URL(string: urlStr)
        let req = URLRequest(url: url!)
        webView.mainFrame.load(req)
    }

    
    
    override func viewDidAppear() {
        super.viewDidAppear()
        self.view.window?.title = "kBox - GistBox Client App"
    }
        
    
    func getNewBrowser() -> WebView {
        return WebView()
    }
    

}

