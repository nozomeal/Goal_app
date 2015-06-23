//
//  TodayController2.swift
//  Goal_app
//
//  Created by Nozomi Sakamoto on 2015/06/20.
//  Copyright (c) 2015年 Nozomi Sakamoto. All rights reserved.
//

import Foundation
import UIKit

class TodayController2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    // 1日あたりのアウトレット
    @IBOutlet weak var Daily: UILabel!
    // 単位１のアウトレット
    @IBOutlet weak var Tanni_1: UILabel!
    // 単位２のアウトレット
    @IBOutlet weak var Tanni_2: UILabel!
    //目標到達のアウトレット
    @IBOutlet weak var Toutatu: UILabel!
   
    
    // loadボタンのアクション
    @IBAction func load(sender: AnyObject) {
        // データ読み込み処理
        
        // NSUserDefaultsインスタンスの生成
        let userDefaults = NSUserDefaults.standardUserDefaults()
        
        // キーが"saveTnumber"のStringをとります。
        var loadText1 : String! = userDefaults.stringForKey("savenumber")
        // キーが"saveTanni"のStringをとります。
        var loadText2 : String! = userDefaults.stringForKey("saveTanni")
        // キーが"saveTanni"のStringをとります。
        var loadText3 : String! = userDefaults.stringForKey("saveTanni")
        
        // labelに表示
        Daily.text = loadText1
        Tanni_1.text = loadText2
        Tanni_2.text = loadText3

    
        var Mokuhyou  :Int = 0
        var Kyou :Int = 0
        //到達までの計算を表示
        var x2 = Mokuhyou.text.toInt(number)!
        var x1 = Kyou.text.toInt(Today_number)!
        
        var y = x1 - x2
        
        Toutatu.text = String(y)
        
    }
    }
    


    
    
    
    

