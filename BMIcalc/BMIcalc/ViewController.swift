//
//  ViewController.swift
//  BMIcalc
//
//  Created by 宮路大輝 on 2020/06/25.
//  Copyright © 2020 daikimiyaji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var height: UITextField!
    
    @IBOutlet weak var weight: UITextField!
    
    @IBOutlet weak var bmiText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //　身長・体重の入力を数字と小数点のみに限定する。
        self.height.keyboardType = UIKeyboardType.decimalPad
        self.weight.keyboardType = UIKeyboardType.decimalPad
        
    }
    //ボタンの処理。
    @IBAction func button(_ sender: Any) {
    //　計算式weight * height２ optional型 文字列型string
        let dheight = Double(height.text!)
        let dweight = Double(weight.text!)
        let dheight2 = dheight! * dheight!
        let bmi = String(dweight! / dheight2)
        
        //let bmiを文字列の中に表示させる。
        bmiText.text = ("あなたのBMIは" + bmi + "です")
        
    }
    
}

