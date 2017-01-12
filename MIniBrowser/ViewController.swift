//
//  ViewController.swift
//  MIniBrowser
//
//  Created by HanYoungsoo on 2016. 12. 27..
//  Copyright © 2016년 HanYoungsoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIWebViewDelegate {

    @IBOutlet var bookMarkSegmentController: UISegmentedControl!
    @IBOutlet var urlTextFeild: UITextField!
    @IBOutlet var mainWebView: UIWebView!
    @IBOutlet var sppingIndicator: UIActivityIndicatorView!
    
    @IBAction func bookMarkAction(_ sender: Any) {
        let bookMarkURL = bookMarkSegmentController.titleForSegment(at: bookMarkSegmentController.selectedSegmentIndex)!
        
        let urlString = "https://www.\(bookMarkURL.lowercased()).com"
        urlTextFeild.text = urlString
        mainWebView.loadRequest(URLRequest(url: URL(string:urlString)!))
    }
    @IBAction func goBack(_ sender: Any) {
        mainWebView.goBack()
    }
    @IBAction func gofoward(_ sender: Any) {
        mainWebView.goForward()
    }
    @IBAction func stopWeb(_ sender: Any) {
        mainWebView.stopLoading()
    }
    @IBAction func refresh(_ sender: Any) {
        mainWebView.reload()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        var urlString = urlTextFeild.text!
        if(!(urlString.hasPrefix("https://"))){
            urlString = "https://"+urlTextFeild.text!
            urlTextFeild.text = urlString
        }
        
        mainWebView.loadRequest(URLRequest(url: URL(string:urlString)!))
        textField.resignFirstResponder()
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        urlTextFeild.delegate=self
        // Do any additional setup after loading the view, typically from a nib.
        let urlString = "https://www.facebook.com"
        mainWebView.loadRequest(URLRequest(url: URL(string:urlString)!))
        urlTextFeild.text = urlString
        
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        sppingIndicator.startAnimating()
    }
    func webViewDidFinishLoad(_ webView: UIWebView) {
        sppingIndicator.stopAnimating()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

