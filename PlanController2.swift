//
//  PlanController.swift
//  Goal_app
//
//  Created by Nozomi Sakamoto on 2015/06/20.
//  Copyright (c) 2015年 Nozomi Sakamoto. All rights reserved.
//

import Foundation
import UIKit

class PlanController2: UIViewController, UITextFieldDelegate,UIApplicationDelegate {

    
    //日付のアウトレット
    @IBOutlet var kigen: UILabel!
    //pickerviewのアウトレット
    @IBOutlet var datePicker1: UIDatePicker!
    
    @IBAction func changed(sender: UIDatePicker) {
        kigen.text = format(datePicker1.date,style: "yyyy年,MM月dd日")
        
    }
    
    // 書式指定に従って日付を文字列に変換します
    //  date : 日付データ(NSDate型)を指定します
    //  style : 書式を指定します
    //          yyyy 西暦,MM 月,dd 日
    func format(kigen : NSDate, style : String) -> String {
        let dateFormatter = NSDateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "ja_JP")
        dateFormatter.dateFormat = style
        return  dateFormatter.stringFromDate(kigen)


    }
    
    
    //textfeild の設定
    private var myTextField: UITextField!
    
    //number（textfield)のアウトレット
    @IBOutlet weak var numberStr: UITextField!
    
    //Tanni(textfield)のアウトレット
    @IBOutlet weak var Tanni: UITextField!
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberStr.delegate = self
        Tanni.delegate = self
        // Do any additional setup after loading the view, typically from a nib
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    

    
    //OK1のアクション
    @IBAction func OK1(sender: AnyObject) {
    
        //OKボタンで保存
        // データ保存
       let userDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.setObject(Tanni.text, forKey: "saveTanni")
        userDefaults.setObject(kigen.text, forKey: "savekigen")
        userDefaults.setObject(numberStr.text, forKey: "numberStr")
        
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.numberStr = "numberStr"
        appDelegate.kigen = "kigen"

    }
}



