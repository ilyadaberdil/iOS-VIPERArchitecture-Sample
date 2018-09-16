

//
//  Checkbox.swift
//  VIPERSample
//
//  Created by berdil karaçam on 11.09.2018.
//  Copyright © 2018 Berdil İlyada Karacam. All rights reserved.
//

import Foundation
import UIKit



enum TypeofGender {
    case man
    case woman
}
class CheckBox: UIButton {
    // Images
    
    
    var type : TypeofGender?
    
    
  let checkedImage = UIImage(named: "check")! as UIImage
  //let uncheckedImage = UIImage(named: "ic_check_box_outline_blank")! as UIImage
    
    // Bool property
    var isChecked: Bool = false {
        didSet{
     
            setClickImage()
            
        }
       }
    
    override func awakeFromNib() {
        self.isChecked = false
        self.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        self.layer.borderWidth = 2.0
        self.layer.borderColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        self.layer.cornerRadius = 5

    }
    
    func setClickImage(){
        
        if isChecked == true {
            
            self.setImage(checkedImage, for: UIControlState.normal)
            
        } else {
            
            //    self.setImage(uncheckedImage, for: UIControlState.normal)
            self.setImage(nil, for: UIControlState.normal)
        }
        
    }
    
    
}
