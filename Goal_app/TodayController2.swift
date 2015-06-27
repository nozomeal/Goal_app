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
    //残りの日数のアウトレット
    @IBOutlet weak var Nokori: UILabel!


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
        var numberStr = appDelegate.numberStr
        var todayNumberStr = appDelegate.todayNumberStr
        var kigen = appDelegate.kigen
    
        
       //到達までの残りの数値の計算
    
        if var x1 = numberStr?.toInt(){
        // you can use x1 here
        }
        if var x2  = todayNumberStr?.toInt(){
            // you can use x2 here
        }
        
        //到達（y）
        var y: Int = 0
        if x1 < x2 {
            // 目標数値＜現在の数値
            y = x2 - x1
            
        }else if x1 > x2 {
            //　目標数値＞現在の数値
            y = x1 - x2
           
        }
        //到達ラベルに表示
        Toutatu.text = String(y)
        
        
      //残りの日数
        let now = NSDate() // 現在日時の取得
        
        let kigen1 = "2041/10/09 00:00:00" //目標期限を取得するようにする
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy/MM/dd"
        
        let nowDate:NSDate? = dateFormatter.dateFromString(now)
        let kigen1Date:NSDate? = dateFormatter.dateFromString(kigen1)
        
        let cal = NSCalendar.currentCalendar()
        let calUnit:NSCalendarUnit = .CalendarUnitDay | .CalendarUnitYear
        
        let components = cal.components(calUnit, fromDate: nowDate!, toDate: kigen1Date!, options: nil)
        
        
        var z: Int = 0
        z = components.day + components.year * 365
        
        Nokori.text = String(z)
        
        
        
        //１日あたり
        var daily: Int = 0
        
        daily = y / z
        
        Daily.text = String (daily)
        
        
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
