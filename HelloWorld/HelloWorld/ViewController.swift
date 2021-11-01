//
//  ViewController.swift
//  HelloWorld
//
//  Created by Wongil on 2021/11/01.
//  Copyright © 2021 Won-Gil Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // outlet 변수를 연결할 때 weak가 아닌 strong으로 해준다. (두 개의 차이는 메모리 회수 정책이 다름)
    @IBOutlet var lblHello: UILabel!
    @IBOutlet var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // send 버튼 클릭 시 이벤트
    @IBAction func btnSend(_ sender: UIButton) {
        // Outlet 변수로 연결된 상단에 lblHello Label에 txtName 텍스트 필드에 입력한 값과 Hello를 합쳐서 넣어준다.
        lblHello.text = "Hello, " + txtName.text!
    }
    
}

