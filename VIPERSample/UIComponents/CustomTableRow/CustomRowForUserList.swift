//
//  CustomRowForUserList.swift
//  VIPERSample
//
//  Created by berdil karaçam on 12.09.2018.
//  Copyright © 2018 Berdil İlyada Karacam. All rights reserved.
//

import Foundation
import UIKit
class CustomRowForUserList : UITableViewCell {
    
    
    @IBOutlet weak var lblName: UILabel!{
        
        didSet{
            
//            lblName.layer.borderColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
//            lblName.layer.borderWidth = 2.0
//
        }
    }
    
    
    @IBOutlet weak var lblSurname: UILabel!
    
    
    
    @IBOutlet weak var lblGender: UILabel!
    
    
    
    
    @IBOutlet weak var lblNo: UILabel!
    
    
    
    
    @IBOutlet weak var lblDate: UILabel!
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
