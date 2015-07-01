//
//  TodayController1.swift
//  Goal_app
//
//  Created by Nozomi Sakamoto on 2015/06/30.
//  Copyright (c) 2015年 Nozomi Sakamoto. All rights reserved.
//

import UIKit
import Foundation

class TodayController1: UIViewController {
    
    
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
    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
    
    
//    // selfをデリゲートにしているので、ここにデリゲートメソッドを書く
//    func textFieldShouldReturn(textField: UITextField!) -> Bool {
//        self.view.endEditing(true)
//        return false
//    }
    
    
    //TodayNumberのアウトレット
    @IBOutlet weak var todayNumber: UITextField!
     //selfをデリゲートにしているので、ここにデリゲートメソッドを書く
        func textFieldShouldReturn(textField: UITextField!) -> Bool {
            self.view.endEditing(true)
            return false
        }
    @IBAction func OK(sender: AnyObject) {
        // AppDelegateのインスタンスを取得
        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        // appDelegateの変数を操作
        ++appDelegate.number
        // ラベル表示,ラベル用にString型へ変換
        let tmpTodayNumber: Int = appDelegate.todayNumber
        //textfield.text = "[\(String(tmpNumber))]"
    }
    override func viewDidAppear(animated: Bool) {
        // AppDelegateのインスタンスを取得
        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        // ラベル表示,ラベル用にString型へ変換
        let tmpTodayNumber: Int = appDelegate.todayNumber
        //firstViewLabel.text = "[\(String(tmpPoint))]"
    }
    
    
    
    
    
    
    
    
    
    
    
    
//    @IBAction func OK2(sender: AnyObject) {
//        //データの受け渡し送り手
//        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
//        appDelegate.todayNumberStr =  "todayNumberStr"
//        
//        // OK2ボタンのアクション
//        // データ保存処理
//        // NSUserDefaultsインスタンスの生成
//        let userDefaults = NSUserDefaults.standardUserDefaults()
//        userDefaults.setObject(todayNumberStr.text, forKey: "savetodayNumberStr")
//        
//    }
   
}
