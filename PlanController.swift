//
//  PlanController.swift
//  Goal_app
//
//  Created by Nozomi Sakamoto on 2015/06/20.
//  Copyright (c) 2015年 Nozomi Sakamoto. All rights reserved.
//

import Foundation
import UIKit

class PlanController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet var data: UILabel!
    @IBOutlet var dataPicker1: UIDatePicker!
    
    @IBAction func changed(sender: UIDatePicker) {
        data.text = format(dataPicker1.date,style: "yyyy年,MM月dd日")
    }
    // 書式指定に従って日付を文字列に変換します
    // パラメータ
    //  date : 日付データ(NSDate型)を指定します
    //  style : 書式を指定します
    //          yyyy 西暦,MM 月,dd 日,HH 時
    //
    func format(date : NSDate, style : String) -> String {
        let dateFormatter = NSDateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP")
        dateFormatter.dateFormat = style
        return  dateFormatter.stringFromDate(date)
    }
    private var myTextField: UITextField!
    
    //numberのアウトレット
    @IBOutlet weak var number: UITextField!
    
    
    @IBOutlet weak var Tanni: UITextField!
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func OK(sender: AnyObject) {
    
    
    // saveボタンのアクション
        // データ保存処理
        // NSUserDefaultsインスタンスの生成
        let userDefaults = NSUserDefaults.standardUserDefaults()
        
        // キー: "saveText" , 値: "" を格納。（idは任意）
        userDefaults.setObject(number.text, forKey: "savenumber")
        userDefaults.setObject(Tanni.text, forKey: "saveTanni")
        userDefaults.setObject(dataPicker1.datePickerMode, forkey: "saveData")


    }

}


