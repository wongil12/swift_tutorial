//
//  ViewController.swift
//  PickerView
//
//  Created by Wongil on 2021/11/03.
//  Copyright © 2021 Won-Gil Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    let MAX_ARRAY_NUM = 10
    let PICKER_VIEW_COLUMN = 1
    var imagefileName = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg", "10.jpg"]
    
    @IBOutlet var pickerImage: UIPickerView!
    @IBOutlet var lblImageFileName: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // 피커 뷰에게 컴포넌트의 수를 정수 값으로 넘겨주는 메서드
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    // 피커 뷰에게 컴포넌트 열의 개수를 정수 값으로 넘겨주는 메서드
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imagefileName.count
    }
    
    // 각 열의 타이틀을 문자열로 넘겨주는 메서드
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return imagefileName[row]
    }


}

