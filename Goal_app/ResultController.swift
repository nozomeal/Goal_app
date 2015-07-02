//
//  ResultController.swift
//  Goal_app
//
//  Created by Nozomi Sakamoto on 2015/06/30.
//  Copyright (c) 2015年 Nozomi Sakamoto. All rights reserved.
//

import UIKit
import Foundation
class ResultController: UIViewController,UIApplicationDelegate {
    
    // AppDelegateのインスタンスを取得
    let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    @IBOutlet weak var ResultLabel: UILabel!
    @IBOutlet weak var TextMessege: UITextView!
    @IBOutlet weak var ResultImage: UIImageView!
    
    
    let ResultPic0: UIImage! = UIImage(named: "ganba.png")
    let ResultPic1: UIImage! = UIImage(named: "clear1.png")
    let ResultPic2: UIImage! = UIImage(named: "not_clear.png")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var y = appDelegate.Toutatu
        var n = appDelegate.nissu
        
        
        // データ読み込み受け手
        let userDefaults = NSUserDefaults.standardUserDefaults()
        var loadText9: String! = userDefaults.stringForKey("saveSettei")
        ResultLabel.text = loadText9
        
        if  y == 0 {
            TextMessege.text = String("目標を達成しました！次の目標をたてましょう！")
            ResultImage.image = ResultPic1
        } else if y > 0 {
            TextMessege.text = String("明日も頑張りましょう！")
            ResultImage.image = ResultPic0
        }else if n == 0 {
            TextMessege.text = String("目標達成ならず、、、")
            ResultImage.image = ResultPic2
            
        }
    }
    
    
//    @IBAction func ok4(sender: AnyObject) {
//        
////        // appDelegateの変数を操作
////        ++appDelegate.nissu
////        ++appDelegate.y
////        // ラベル表示,ラベル用にString型へ変換
////        let tmpNissu: Int = appDelegate.nissu
////        let tmpy: Int = appDelegate.y
////        //secondViewLabel.text = "[\(String(tmpNisuu)]"
//    }
//    override func viewDidAppear(animated: Bool) {
//        // ラベル表示,ラベル用にString型へ変換
//        let tmpNissu: Int = appDelegate.nissu
//        let tmpy: Int = appDelegate.y
//        //secondViewLabel.text = "[\(String(tmpPoint))]"
    
    

    
    
        
//        if  tmpNissu <= 0 {
//            TextMessege.text = String("目標を達成しました！次の目標をたてましょう！")
//            ResultImage.image = ResultPic1
//        } else if tmpNissu > 0 {
//            TextMessege.text = String("明日も頑張りましょう！")
//            ResultImage.image = ResultPic0
//            }
//        }

    

    
       override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
}


