//
//  ViewController.swift
//  WebView
//
//  Created by Wongil on 2021/11/07.
//  Copyright © 2021 Won-Gil Kim. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    @IBOutlet var txtUrl: UITextField!
    @IBOutlet var myWebView: WKWebView!
    @IBOutlet var myActivityIndicator: UIActivityIndicatorView!
    
    // 매개변수로 받은 url을 웹 뷰에 띄워줌
    func loadWebPage(_ url: String) {
        let myUrl = URL(string: url);
        let myRequest = URLRequest(url: myUrl!)
        myWebView.load(myRequest)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myWebView.navigationDelegate = self
        loadWebPage("http://naver.com")
    }
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        myActivityIndicator.startAnimating()
        myActivityIndicator.isHidden = false
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        myActivityIndicator.stopAnimating()
        myActivityIndicator.isHidden = true
    }

    @IBAction func btnGotoUrl(_ sender: UIButton) {
    }
    @IBAction func btnGoSite1(_ sender: UIButton) {
    }
    @IBAction func btnGoSite2(_ sender: UIButton) {
    }
    @IBAction func btnLoadHtmlString(_ sender: UIButton) {
    }
    @IBAction func btnLoadHtmlFile(_ sender: UIButton) {
    }
    
    @IBAction func btnStop(_ sender: UIBarButtonItem) {
    }
    @IBAction func btnReload(_ sender: UIBarButtonItem) {
    }
    @IBAction func btnGoBack(_ sender: UIBarButtonItem) {
    }
    @IBAction func btnGoForward(_ sender: UIBarButtonItem) {
    }
    
    
}

