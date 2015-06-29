//
//  TodayController1.swift
//  Goal_app
//
//  Created by Nozomi Sakamoto on 2015/06/20.
//  Copyright (c) 2015年 Nozomi Sakamoto. All rights reserved.
//

import Foundation
import UIKit

class TodayController1: UIViewController ,UITextField,UIApplicationDelegate{
    
    
    
    // Tanni_3のアウトレット
    @IBOutlet weak var Tanni_3: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        // データ読み込み受け手
        // NSUserDefaultsインスタンスの生成
        let userDefaults = NSUserDefaults.standardUserDefaults()
        var loadText4 : String! = userDefaults.stringForKey("saveTanni")
        
        // labelに表示
        Tanni_3.text = loadText4
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //TodayNumberのアウトレット
    @IBOutlet weak var todayNumberStr: UITextField!
    
//    func textFieldShouldReturn(textField: UITextField) -> Bool {
//        self.view.endEditing(true)
//        return false
//    }
    @IBAction func OK2(sender: AnyObject) {
        //データの受け渡し送り手
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.todayNumberStr = "savetodayNumberStr"
        
        // OK2ボタンのアクション
        // データ保存処理
        // NSUserDefaultsインスタンスの生成
        let userDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.setObject(todayNumberStr.text, forKey: "savetodayNumberStr")
        
    }

    
}
