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
    // AppDelegateのインスタンスを取得
    var appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate

    
    //textfeild の設定
    private var myTextField: UITextField!
    
    //number（textfield)のアウトレット
    @IBOutlet weak var numberStr: UITextField!
    //Tanni(textfield)のアウトレット
    @IBOutlet weak var Tanni: UITextField!
    //期限のアウトレット
    @IBOutlet weak var nissu: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
    }
    
//    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        numberStr.delegate = self
//        nissu.delegate = self
//        self.view.addSubview(numberStr)
//        self.view.addSubview(nissu)
//    
//    }
//    
//    // selfをデリゲートにしているので、ここにデリゲートメソッドを書く
//    func textFieldShouldReturn(numberStr: UITextField) -> Bool {
//        self.view.endEditing(true)
//        return false
    
//    /*
//    UITextFieldが編集された直後に呼ばれるデリゲートメソッド.
//    */
//    func textFieldDidBeginEditing(textField: UITextField){
//        println("textFieldDidBeginEditing:" + numberStr.text)
//    }
//    
//    /*
//    UITextFieldが編集終了する直前に呼ばれるデリゲートメソッド.
//    */
//    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
//        println("textFieldShouldEndEditing:" + numberStr.text)
//        
//        return true
//    }
//    
//    /*
//    改行ボタンが押された際に呼ばれるデリゲートメソッド.
//    */
//    func textFieldShouldReturn(textField: UITextField) -> Bool {
//        numberStr.resignFirstResponder()
//        
//        return true
//    }

    
    
    @IBAction func OK1(sender: AnyObject) {

        
        
        var x1 = numberStr.text.toInt()!
        
        appDelegate.number = x1
        println(x1)
        
        var n = nissu.text.toInt()!
        
        appDelegate.nissu = n
        println(n)
        
        
//        // AppDelegateのインスタンスを取得
//        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        // appDelegateの変数を操作
//        ++appDelegate.number
//        ++appDelegate.nissu
//        // ラベル表示,ラベル用にString型へ変換
//        let tmpNumber: Int = appDelegate.number
//        let tmpNissu: Int = appDelegate.nissu
        //単位の保存
        let userDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.setObject(Tanni.text, forKey: "saveTanni")
        userDefaults.setObject(numberStr.text, forKey: "tmpNumber")
        userDefaults.setObject(nissu.text, forKey: "saveNissu")
    }

//    override func viewDidAppear(animated: Bool) {
//        // AppDelegateのインスタンスを取得
//        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
//        appDelegate.Tanni = "saveTanni"
//        appDelegate.numberStr = "tmpNumber"
//        //firstViewLabel.text = "[\(String(tmpPoint))]"
//        
//        
//    }
}



