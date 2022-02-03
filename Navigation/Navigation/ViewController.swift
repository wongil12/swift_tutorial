//
//  ViewController.swift
//  Navigation
//
//  Created by Wongil on 2022/02/03.
//

import UIKit

class ViewController: UIViewController, EditDelegate {

    @IBOutlet var txMessage: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController = segue.destination as! EditViewController
        if segue.identifier == "editButton" {
            // 버튼을 클릭한 경우
            editViewController.textWayValue = "segue: use button"
        } else if segue.identifier == "editBarButton" {
            // Navigation 버튼을 클릭했을 때
            editViewController.textWayValue = "segue: use Bar button"
        }
        editViewController.delegate = self
    }

    func didMessageEditDone(_ controller: EditViewController, message: String) {
        txMessage.text = message
    }

}

