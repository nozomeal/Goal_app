//
//  TodayController1.swift
//  Goal_app
//
//  Created by Nozomi Sakamoto on 2015/06/20.
//  Copyright (c) 2015年 Nozomi Sakamoto. All rights reserved.
//

import Foundation
import UIKit

class TodayController1: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //numberのアウトレット
    @IBOutlet weak var Today_number: UITextField!
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    @IBAction func OK2(sender: AnyObject) {
        
        
        // saveボタンのアクション
        // データ保存処理
        // NSUserDefaultsインスタンスの生成
        let userDefaults = NSUserDefaults.standardUserDefaults()
        
        // キー: "saveText" , 値: "" を格納。（idは任意）
        userDefaults.setObject(Today_number.text, forKey: "saveToday_number")
        
        
    }
    
    // Tanni_3のアウトレット
    @IBOutlet weak var Tanni_3: UILabel!
    // loadボタンのアクション
    @IBAction func load(sender: AnyObject) {
        // データ読み込み処理
        
        // NSUserDefaultsインスタンスの生成
        let userDefaults = NSUserDefaults.standardUserDefaults()
        
        // キーが"saveTnumber"のStringをとります。
        var loadText4 : String! = userDefaults.stringForKey("saveTanni")
        
        
        // labelに表示
        
        Tanni_3.text = loadText4

    }
}