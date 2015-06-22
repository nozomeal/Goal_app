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
   
    // Dailyのアウトレット
    @IBOutlet weak var Daily: UILabel!
    // Tanni_1のアウトレット
    @IBOutlet weak var Tanni_1: UILabel!
    // Tanni_2のアウトレット
    @IBOutlet weak var Tanni_2: UILabel!
   
    
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
        
        
    }

    
}
