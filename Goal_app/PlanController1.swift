//
//  PlanController1.swift
//  Goal_app
//
//  Created by Nozomi Sakamoto on 2015/06/23.
//  Copyright (c) 2015年 Nozomi Sakamoto. All rights reserved.
//

import Foundation
import UIKit

class PlanController1: UIViewController ,UIApplicationDelegate{
    
    
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
        
        
        // OK3ボタンで保存
        // データ保存
        // NSUserDefaultsインスタンスの生成
        let userDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.setObject(Settei.text, forKey: "saveSettei")
        
        
        //データの受け渡し送り手
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.Settei = "saveSettei"
    
    }
}