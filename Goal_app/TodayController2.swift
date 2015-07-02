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
    
    // AppDelegateのインスタンスを取得
    let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
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

    
    var z:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // データ読み込み
        let userDefaults = NSUserDefaults.standardUserDefaults()
        var loadText2 : String! = userDefaults.stringForKey("saveTanni")
        var loadText3 : String! = userDefaults.stringForKey("saveTanni")
        
        
        // labelに表示
        Tanni_1.text = loadText2
        Tanni_2.text = loadText3
        // Do any additional setup after loading the view, typically from a nib.
        
        
        var x1 = appDelegate.number
        var x2 = appDelegate.todayNumber
        var n = appDelegate.nissu
        var y: Int = 0
        
        
        if x1 > x2 {
             var y = x1 - x2
            Toutatu.text = String(y)
            var z = y / n
            Daily.text = String(z)
            appDelegate.Toutatu = y
        }else {
             var y = x2 - x1
            Toutatu.text = String(y)
            var z = y / n
            Daily.text = String(z)
            appDelegate.Toutatu = y
        }
        
        //Toutatu.text = String(y)
        Nokori.text = String(n)
//        appDelegate.Toutatu = y
//        var z: Int = 0
         //var z = y / n
//        Daily.text = String(z)
        
        
    }
    
    
    
    
    
    @IBAction func OK5(sender: AnyObject) {

        //appDelegate.Toutatu = y
        
        // データ保存
                let userDefaults = NSUserDefaults.standardUserDefaults()
                userDefaults.setObject(Toutatu.text, forKey: "saveToutatu")
        
    
    
    }
}
//        // AppDelegateのインスタンスを取得
//        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
//        // appDelegateの変数を操作
//        ++appDelegate.number
//        ++appDelegate.todayNumber
//        ++appDelegate.nissu
//        // ラベル表示,ラベル用にString型へ変換
//        let tmpNumber: Int = appDelegate.number
//        let tmpTodayNumber: Int = appDelegate.todayNumber
//        let tmpNissu: Int = appDelegate.nissu
//        

        //secondViewLabel.text = "[\(String(tmpPoint))]"
    
    
//     func viewDidAppear(animated: Bool) {
//        // AppDelegateのインスタンスを取得
//        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
//        // ラベル表示,ラベル用にString型へ変換
//        let tmpNumber: Int = appDelegate.number
//        let tmpTodayNumber: Int = appDelegate.todayNumber
//        let tmpNissu: Int = appDelegate.nissu
//        Nokori.text = "\(String(tmpNissu))"
        
        
//        //到達（y）
//            var y: Int = 0
//        
//                //到達（y）
//                    if tmpNumber > tmpTodayNumber {
//                        // 目標数値＜現在の数値
//                        y = tmpNumber - tmpTodayNumber
//        
//                    }else if tmpNumber < tmpTodayNumber {
//                        //　目標数値＞現在の数値4
//                        y = tmpTodayNumber - tmpNumber
//                    }
//        
//                        //到達ラベルに表示
//                        Toutatu.text = String(y)
//                    }
//      let tmpy: Int = appDelegate.y

    
    
    
//    @IBAction func load(){
//        //データの取得受け手
//        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as!AppDelegate
////        var numberStr = appDelegate.numberStr
////        var todayNumberStr = appDelegate.todayNumberStr
//        var kigen = appDelegate.kigen
//        
//        //到達（y）
//        var y: Int = 0
//        //期日ー今日＝残りの日数
//        var z: Int = 0
//        
//        
//        //到達までの残りの数値の計算
//        if  numberStr != nil && todayNumberStr != nil {
//        
//            if var x1 = numberStr!.toInt(){
//            //Optional Binding
//            if var x2 = todayNumberStr!.toInt(){
//            //Optional Binding
//                
//            //到達（y）
//            if x2 > x1 {
//                // 目標数値＜現在の数値
//                y = x2 - x1
//                    
//            }else if x1 > x2 {
//                //　目標数値＞現在の数値4
//                y = x1 - x2
//            }
//                
//                //到達ラベルに表示
//                Toutatu.text = String(y)
//            }
//        }
//        
//        //残りの日数
//        let nowDate = NSDate() // 現在日時の取得
//        
//        // NSData to String
//        let kigen = appDelegate.kigen
//        
//        //目標期限を取得するようにする
//
//        let dateFormatter = NSDateFormatter()
//        dateFormatter.dateFormat = "yyyy/MM/dd"
//        let kigenDate:NSDate? = dateFormatter.dateFromString(kigen!)
//        let cal = NSCalendar.currentCalendar()
//        
//        if  kigen != nil && kigenDate != nil{
//        let calUnit:NSCalendarUnit = .CalendarUnitDay | .CalendarUnitYear
//        let components = cal.components(calUnit, fromDate: nowDate, toDate: kigenDate!, options: nil)
//
//        z = components.day + components.year * 365
//        Nokori.text = String(z)
//        
//        
//        
//        //１日あたり
//        var daily: Int = 0
//        
//        daily = y / z
//        Daily.text = String (daily)
//            }
//            
//            }
    
//        // データ読み込み
//        let userDefaults = NSUserDefaults.standardUserDefaults()
//        var loadText2 : String! = userDefaults.stringForKey("saveTanni")
//        var loadText3 : String! = userDefaults.stringForKey("saveTanni")
//        
//        
//        // labelに表示
//        Tanni_1.text = loadText2
//        Tanni_2.text = loadText3
    
//     override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }

//    @IBAction func OK4(){
//        
//        //データ受け渡し送り手
//        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
//        appDelegate.Toutatu = "saveToutatu"
//        
//        // データ保存
//        let userDefaults = NSUserDefaults.standardUserDefaults()
//        userDefaults.setObject(Toutatu.text, forKey: "saveToutatu")
//        userDefaults.setObject(Nokori.text, forKey: "saveNokori")
//    }


