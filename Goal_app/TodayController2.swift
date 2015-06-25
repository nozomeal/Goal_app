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
        var number = appDelegate.numberStr
        var todaynumber = appDelegate.todayNumberStr
        var date = appDelegate.date
    
        
       /*//到達までの残りの数値の計算
       /* import = Darwin
        var str: String = "10.5"
        var doubleNum: Double = atof(str)
        //10.5*/
        
        if let x1 = numberString?.toInt(){
            //you can use x1 here
        }
        
        if let x2 = todayNumberString?.toInt(){
            //you can use x2 here
        }
        
        var y: Double = 0
        
        if(x1 < x2){
            // 目標数値＜現在の数値
            y = x2 - x1
            //Toutatu.text = String(y)
        }else if(x1 > x2){
            //　目標数値＞現在の数値
            y = x1 - x2
            //Toutatu.text = String(y)
        }
        Toutatu.text = String(stringInterpolationSegment: y)*/
        
        
        //残りの日数
        /*let date = NSDate()
        let calendar = NSCalendar(identifier: NSGregorianCalendar)
        //和暦を使いたいときはidentifierにはNSJapaneseCalendarを指定
        //let calendar = NSCalendar(identifier: NSJapaneseCalendar)
        
        var comps:NSDateComponents = calendar.components(NSCalendarUnit.YearCalendarUnit|NSCalendarUnit.MonthCalendarUnit|NSCalendarUnit.DayCalendarUnit,
            fromDate: date)
        
        var year = comps.year
        var month = comps.month
        var day = comps.day
        
        
    

        Nokori =*/

        
        
        
        
        
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



    
    
    
    

