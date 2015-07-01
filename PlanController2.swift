//
//  PlanController.swift
//  Goal_app
//
//  Created by Nozomi Sakamoto on 2015/06/20.
//  Copyright (c) 2015年 Nozomi Sakamoto. All rights reserved.
//

import Foundation
import UIKit

class PlanController2: UIViewController, UITextFieldDelegate,UIApplicationDelegate {
    
    //textfeild の設定
    private var myTextField: UITextField!
    
    //number（textfield)のアウトレット
    @IBOutlet weak var numberStr: UITextField!
    
    //Tanni(textfield)のアウトレット
    @IBOutlet weak var Tanni: UITextField!
    
    //期限のアウトレット
    @IBOutlet weak var nissu: UITextField!
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        numberStr.delegate = self
//        Tanni.delegate = self
//        // Do any additional setup after loading the view, typically from a nib
//    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        numberStr.delegate = self
        nissu.delegate = self
    }
    
    // selfをデリゲートにしているので、ここにデリゲートメソッドを書く
    func textFieldShouldReturn(numberStr: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    
    @IBAction func OK1(sender: AnyObject) {
        // AppDelegateのインスタンスを取得
        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        // appDelegateの変数を操作
        ++appDelegate.number
        // ラベル表示,ラベル用にString型へ変換
        let tmpNumber: Int = appDelegate.number
        let tmpNissu: Int = appDelegate.nissu
        //単位の保存
        let userDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.setObject(Tanni.text, forKey: "saveTanni")
    }

    override func viewDidAppear(animated: Bool) {
        // AppDelegateのインスタンスを取得
        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.Tanni = "saveTanni"
        //firstViewLabel.text = "[\(String(tmpPoint))]"
        
        
    }
}



