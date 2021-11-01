//
//  ViewController.swift
//  ImageViewer
//
//  Created by Wongil on 2021/11/01.
//  Copyright © 2021 Won-Gil Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let maxImage = 6
    var currentImage = 1
    
    @IBOutlet var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let img = UIImage(named: String(currentImage) + ".png")
        imgView.image = img
    }
    // 이전 버튼 클릭 이벤트
    @IBAction func btnPrevImage(_ sender: UIButton) {
        if(currentImage <= 1) {
            currentImage = maxImage
        } else {
            currentImage -= 1
        }
        
        imgView.image = UIImage(named: String(currentImage) + ".png")
    }
    // 다음 버튼 클릭 이벤트
    @IBAction func btnNextImage(_ sender: UIButton) {
        if(currentImage >= maxImage) {
            currentImage = 1
        } else {
            currentImage += 1
        }
        
        imgView.image = UIImage(named: String(currentImage) + ".png")
    }
    
    
}

