//
//  NotClearController.swift
//  Goal_app
//
//  Created by Nozomi Sakamoto on 2015/06/20.
//  Copyright (c) 2015年 Nozomi Sakamoto. All rights reserved.
//

import Foundation
import UIKit

class NotClearController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var notclear: UILabel!
    // データ読み込み処理
    
    @IBAction func load3(){
        // NSUserDefaultsインスタンスの生成
        let userDefaults = NSUserDefaults.standardUserDefaults()
        // キーが"saveSetteir"のStringをとります。
        var loadText6 : String! = userDefaults.stringForKey("saveSettei")
        // labelに表示
        notclear.text = loadText6
    }

    
}
