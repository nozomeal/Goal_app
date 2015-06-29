//
//  ResultController.swift
//  Goal_app
//
//  Created by Nozomi Sakamoto on 2015/06/29.
//  Copyright (c) 2015年 Nozomi Sakamoto. All rights reserved.
//

import UIKit

import Foundation
class ResultController: UIViewController ,UIApplicationDelegate{
    
    //データの受け渡し受け手
    var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    var Toutatu = appDelegate.Toutatu
        
    
    
    @IBOutlet weak var ResultLabel: UILabel!
    @IBOutlet weak var TextMessege: UITextView!
    @IBOutlet weak var ResultImage: UIImageView!
    
            
        let ResultPic0: UIImage! = UIImage(named: "ganba.png")
        let ResultPic1: UIImage! = UIImage(named: "clear1.png")
        let ResultPic2: UIImage! = UIImage(named: "not_clear.png")
    

    
        override func viewDidLoad() {
            super.viewDidLoad()
    
            if t1 <= 0 {
                TextMessege.text = String("目標を達成しました！次の目標をたてましょう！")
                ResultImage.image = ResultPic1
            } else if t1 > 0 {
                TextMessege.text = String("明日も頑張りましょう！")
                ResultImage.image = ResultPic0
            }else{
                TextMessege.text = String("目標達成ならず、、、もう一度目標を設定しましょう。")
                ResultImage.image = ResultPic2
            }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    }
}