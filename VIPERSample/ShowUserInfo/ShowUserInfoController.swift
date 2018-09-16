//
//  ShowUserInfoController.swift
//  VIPERSample
//
//  Created by Berdil İlyada Karacam on 9.09.2018.
//  Copyright © 2018 Berdil İlyada Karacam. All rights reserved.
//

import Foundation
import UIKit


protocol ShowUserInfoProtocol {
    
    func setNewUser(user : User)
    
}

class ShowUserInfoController: UIViewController {

    
    @IBOutlet weak var lblName: UILabel!{
        didSet{
            lblName.backgroundColor = #colorLiteral(red: 0.8424999118, green: 0.8157551289, blue: 1, alpha: 0)
            lblName.text = "Name: "
            lblName.font = UIFont(name: lblName.font.fontName, size: 15)
        }
    }
    
    @IBOutlet weak var txtName: UILabel!{
        didSet{
            txtName.backgroundColor = #colorLiteral(red: 0.8424999118, green: 0.8157551289, blue: 1, alpha: 0)
      //       if let name = presenter?.name {
      //           txtName.text = "\(name)"
  //        }
            txtName.font = UIFont(name: txtName.font.fontName, size: 15)
        }
    }
    
    @IBOutlet weak var lblSurname: UILabel!{
        didSet{
            lblSurname.backgroundColor = #colorLiteral(red: 0.8424999118, green: 0.8157551289, blue: 1, alpha: 0)
            lblSurname.text = "Surname: "
            lblSurname.font = UIFont(name: lblSurname.font.fontName, size: 15)
        }
    }
    
    
    @IBOutlet weak var txtSurname: UILabel!{
        didSet{
            txtSurname.backgroundColor = #colorLiteral(red: 0.8424999118, green: 0.8157551289, blue: 1, alpha: 0)
       //      if let surname = presenter?.surname {
        //         txtSurname.text = "\(surname)"
        //     }
            txtSurname.font = UIFont(name: txtSurname.font.fontName, size: 15)
        }
    }
    
    
    
    
    
    @IBOutlet weak var lblNo: UILabel!{
        didSet{
            lblNo.backgroundColor = #colorLiteral(red: 0.8424999118, green: 0.8157551289, blue: 1, alpha: 0)
            lblNo.text = "No: "
            lblNo.font = UIFont(name: lblNo.font.fontName, size: 15)
        }
    }
    
    
    @IBOutlet weak var txtNo: UILabel!{
        didSet{
            txtNo.backgroundColor = #colorLiteral(red: 0.8424999118, green: 0.8157551289, blue: 1, alpha: 0)
        //     if let no = presenter?.no {
      //           txtNo.text = "\(no)"
           //  }
            txtNo.font = UIFont(name: txtNo.font.fontName, size: 15)
        }
    }
    
    
    
    @IBOutlet weak var lblGender: UILabel!{
        didSet{
            lblGender.backgroundColor = #colorLiteral(red: 0.8424999118, green: 0.8157551289, blue: 1, alpha: 0)
            lblGender.text = "Cinsiyet: "
            lblGender.font = UIFont(name: lblGender.font.fontName, size: 15)
        }
    }
    
    
    
    @IBOutlet weak var txtGender: UILabel!{
        didSet{
            txtGender.backgroundColor = #colorLiteral(red: 0.8424999118, green: 0.8157551289, blue: 1, alpha: 0)
         //    if let no = presenter?.no {
//                txtNo.text = "\(no)"
        //     }
            txtGender.font = UIFont(name: txtGender.font.fontName, size: 15)
        }
    }
    
    
    @IBOutlet weak var lblDate: UILabel!{
        didSet{
            lblDate.backgroundColor = #colorLiteral(red: 0.8424999118, green: 0.8157551289, blue: 1, alpha: 0)
            lblDate.text = "Date: "
            lblDate.font = UIFont(name: lblDate.font.fontName, size: 15)
        }
    }
    
    
    @IBOutlet weak var txtDate: UILabel!{
        didSet{
            txtDate.backgroundColor = #colorLiteral(red: 0.8424999118, green: 0.8157551289, blue: 1, alpha: 0)
           
            txtDate.font = UIFont(name: txtDate.font.fontName, size: 10)
        }
    }
    
    @IBOutlet weak var btnNext: UIButton!{
        didSet{
            
            if(presenter?.onay)! {
                btnNext.setTitle("Geri", for: UIControlState.normal)
            }
            else {
                btnNext.setTitle("Onayla", for: UIControlState.normal)
            }
            
            btnNext.backgroundColor = #colorLiteral(red: 0.8424999118, green: 0.8157551289, blue: 1, alpha: 0)
            btnNext.setTitleColor( #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: UIControlState.normal)
         //   btnNext.setTitle("Onayla", for: UIControlState.normal)
            //btnNext.font = UIFont(name: btnNext.font.fontName, size: 15)
            
            btnNext.layer.cornerRadius = 5
            btnNext.layer.borderWidth = 1
            btnNext.layer.borderColor = UIColor.black.cgColor
            
            
            //SET GESTURE HERE!
            let gestureForButtonAccept = UITapGestureRecognizer(target: self, action: #selector(self.buttonTapped))
            btnNext.addGestureRecognizer(gestureForButtonAccept)
            
        }
    }
    
    @objc func buttonTapped(){
        presenter?.submitAccepted()
    }
    
    typealias P = ShowUserInfoPresenter
    typealias R = ShowUserInfoRouter
    typealias I = ShowUserInfoInteractor
    
    
    var presenter: P?
    var router: R?
    var interactor: I?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureViper()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.setNewUser()
    //    setButtonText()
    
        
    }
    
    func configureViper() {
    //    UserFormLoginRouter.setVIPER(viewController:self)
        ShowUserInfoRouter.setVIPER(viewController:self)
    }

}

extension ShowUserInfoController:ShowUserInfoProtocol {
 
   func setNewUser(user:User) {
//
//        txtName.text = user.name
//        txtSurname.text = user.surname
//        txtNo.text=user.no
//        txtGender.text = user.gender
//
   }
//
    
    func setButtonText(){
        if(presenter?.onay)! {
            btnNext.setTitle("Geri", for: UIControlState.normal)
        }
        else {
            
        }
    }
    
    
    
    
}
