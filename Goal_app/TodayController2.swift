//
//  TodayController2.swift
//  Goal_app
//
//  Created by Nozomi Sakamoto on 2015/06/20.
//  Copyright (c) 2015年 Nozomi Sakamoto. All rights reserved.
//

import Foundation
import UIKit

class TodayController2: UIViewController ,UIApplicationDelegate  {
    
    
    
    // 1日あたりのアウトレット
    @IBOutlet weak var Daily: UILabel!
    // 単位１のアウトレット
    @IBOutlet weak var Tanni_1: UILabel!
    // 単位２のアウトレット
    @IBOutlet weak var Tanni_2: UILabel!
    //目標到達のアウトレット
    @IBOutlet weak var Toutatu: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
    
    // loadボタンのアクション
    @IBAction func load(sender: AnyObject) {
        
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        //AppDelegateのインスタンスを取得
        var number = appDelegate.number
        var Today_number = appDelegate.Today_number
        
        
        
        var toutatu :Int = 0
        
        if(number < Today_number){
            // 目標数値＜現在の数値
            toutatu = Today_number! - number!
            Toutatu.text = String(toutatu)
        }else if(number > Today_number){
            //　目標数値＞現在の数値
            toutatu = number! - Today_number!
            Toutatu.text = String(toutatu)
        }
        
        
        
        // データ読み込み処理
        // NSUserDefaultsインスタンスの生成
        let userDefaults = NSUserDefaults.standardUserDefaults()
        
    
        // キーが"saveTanni"のStringをとります。
        var loadText2 : String! = userDefaults.stringForKey("saveTanni")
        // キーが"saveTanni"のStringをとります。
        var loadText3 : String! = userDefaults.stringForKey("saveTanni")
        
        // labelに表示
        Tanni_1.text = loadText2
        Tanni_2.text = loadText3

        
    }
    }
    


    
    
    
    

