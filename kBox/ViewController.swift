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
    
    
    func connectWebPage(urlStr: String) {
        let url = NSURL(string: urlStr)
        let req = NSURLRequest(URL: url!)
        webView.mainFrame.loadRequest(req)
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
        self.view.window?.title = "kBox - GistBox Client App"
    }
        
    
    func getNewBrowser() -> WebView {
        return WebView()
    }
    

}

