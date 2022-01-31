//
//  ViewController.swift
//  PageControl_traning
//
//  Created by Wongil on 2022/02/01.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var lblCount: UILabel!
    @IBOutlet var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pageControl.numberOfPages = 10
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.black
        pageControl.currentPageIndicatorTintColor = UIColor.red
        
        lblCount.text = "0"
    }

    @IBAction func changePage(_ sender: UIPageControl) {
        lblCount.text = String(pageControl.currentPage)
    }
    
}

