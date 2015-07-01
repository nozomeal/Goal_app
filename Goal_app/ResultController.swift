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
    
    
    @IBOutlet weak var ResultLabel: UILabel!
    @IBOutlet weak var TextMessege: UITextView!
    @IBOutlet weak var ResultImage: UIImageView!
    
    
    let ResultPic0: UIImage! = UIImage(named: "ganba.png")
    let ResultPic1: UIImage! = UIImage(named: "clear1.png")
    let ResultPic2: UIImage! = UIImage(named: "not_clear.png")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // データ読み込み受け手
        let userDefaults = NSUserDefaults.standardUserDefaults()
        var loadText9: String! = userDefaults.stringForKey("saveSettei")
        ResultLabel.text = loadText9
        
        //データの受け渡し受け手
        
    }
    
    
    @IBAction func ok4(sender: AnyObject) {
        // AppDelegateのインスタンスを取得
        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        // appDelegateの変数を操作
        ++appDelegate.nissu
        ++appDelegate.y
        // ラベル表示,ラベル用にString型へ変換
        let tmpNissu: Int = appDelegate.nissu
        let tmpy: Int = appDelegate.y
        //secondViewLabel.text = "[\(String(tmpNisuu)]"
    }
    override func viewDidAppear(animated: Bool) {
        // AppDelegateのインスタンスを取得
        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        // ラベル表示,ラベル用にString型へ変換
        let tmpNissu: Int = appDelegate.nissu
        let tmpy: Int = appDelegate.y
        //secondViewLabel.text = "[\(String(tmpPoint))]"
        
        
        if  tmpNissu <= 0 {
            TextMessege.text = String("目標を達成しました！次の目標をたてましょう！")
            ResultImage.image = ResultPic1
        } else if tmpNissu > 0 {
            TextMessege.text = String("明日も頑張りましょう！")
            ResultImage.image = ResultPic0
        }else if tmpy == 0 {
            TextMessege.text = String("目標達成ならず、、、もう一度目標を設定しましょう。")
            ResultImage.image = ResultPic2
            }
        }


    
      override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
}

