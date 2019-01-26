//
//  ViewController.swift
//  AES256_example
//
//  Created by 구본익 on 26/01/2019.
//  Copyright © 2019 dev_koo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var decrypedTextBox: UITextField!
    @IBOutlet weak var encrypedText: UITextField!
    @IBOutlet weak var inputEncrypedTextBox: UITextField!
    @IBOutlet weak var outputDecrypedText: UITextField!
    
    let defaultKey : String = "abcdefghijklmnopqrstuvwxyz123456" // default key 32
    // Default iv is 0123456789101112
    // You can see iv in AES.swift file
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // 암호화하기 버튼
    @IBAction func encryped_button(_ sender: UIButton) {
        // AES.swift에 있는 기능 이용, 사용자가 입력한 텍스트를 암호화한다.
        encrypedText.text = AES256CBC.encryptString(decrypedTextBox.text!, password: defaultKey)!
    }
    
    // 암호화풀기 버튼
    @IBAction func decryped_button(_ sender: UIButton) {
        outputDecrypedText.text = AES256CBC.decryptString(inputEncrypedTextBox.text!, password: defaultKey)!
    }
}

