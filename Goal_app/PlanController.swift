//
//  PlanController.swift
//  Goal_app
//
//  Created by Nozomi Sakamoto on 2015/06/20.
//  Copyright (c) 2015年 Nozomi Sakamoto. All rights reserved.
//

import Foundation
import UIKit

class PlanController: UIViewController {
    
    class ViewController: UIViewController {
        
        let dp:UIDatePicker = UIDatePicker();
        
        lazy var dateFormatter: NSDateFormatter = {
            let dateFormatter = NSDateFormatter()
            
            dateFormatter.dateStyle = .MediumStyle
            dateFormatter.timeStyle = .ShortStyle
            
            return dateFormatter
            }()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            self.dp.datePickerMode = UIDatePickerMode.Date;
            self.dp.addTarget(self, action: "updateDatePickerLabel", forControlEvents: .ValueChanged);
            self.view.addSubview(self.dp);
        }
        func updateDatePickerLabel(){
            let datestr = dateFormatter.stringFromDate(self.dp.date);
            println(datestr);//Oct 23, 2014,みたいに出力されます。
        }
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
        
    }

}



