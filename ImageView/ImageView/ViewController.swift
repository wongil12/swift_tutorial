//
//  ViewController.swift
//  ImageView
//
//  Created by Wongil on 2021/11/01.
//  Copyright © 2021 Won-Gil Kim. All rights reserved.
//

import UIKit

// 변수 타입 뒤에 붙는 ?는 옵셔널 변수를 의미함
// 옵셔널 변수는 변수의 값이 nil이거나 값의 존재 여부를 알 수 없다는 것을 의미한다.
class ViewController: UIViewController {
    // 확대 여부 변수
    var isZoom = false
    // 켜진 전구 이미지가 저장되는 변수
    var imgOn: UIImage?
    // 꺼진 전구 이미지가 저장되는 변수
    var imgOff: UIImage?
    
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var btnResize: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgOn = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        
        imgView.image = imgOn
    }
    // 확대 버튼 클릭 시 실행되는 함수
    @IBAction func btnResizeImage(_ sender: UIButton) {
        let scale:CGFloat = 2.0
        var newWidth:CGFloat, newHeight: CGFloat
        
        if(isZoom) {
            newWidth = imgView.frame.width/scale
            newHeight = imgView.frame.height/scale
            btnResize.setTitle("확대", for: .normal)
        } else {
            newWidth = imgView.frame.width*scale
            newHeight = imgView.frame.height*scale
            btnResize.setTitle("축소", for: .normal)
        }
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
        
        isZoom = !isZoom
    }
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        if sender.isOn {
            imgView.image = imgOn
        } else {
            imgView.image = imgOff
        }
    }
    
}

