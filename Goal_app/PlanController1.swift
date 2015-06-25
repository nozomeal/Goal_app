//
//  PlanController1.swift
//  Goal_app
//
//  Created by Nozomi Sakamoto on 2015/06/23.
//  Copyright (c) 2015年 Nozomi Sakamoto. All rights reserved.
//

import Foundation
import UIKit

class PlanController1: UIViewController {
    
    
    //設定のアウトレット
    @IBOutlet weak var Settei: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //OK3ボタン
    @IBAction func OK3(sender: AnyObject) {
        
        
        // saveボタンのアクション
        // データ保存処理
        // NSUserDefaultsインスタンスの生成
        let userDefaults = NSUserDefaults.standardUserDefaults()
        
        // キー: "saveText" , 値: "" を格納。（idは任意）
        userDefaults.setObject(Settei.text, forKey: "saveSettei")
    }
    
    
}