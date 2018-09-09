//
//  ViewController.swift
//  VIPERSample
//
//  Created by Berdil İlyada Karacam on 9.09.2018.
//  Copyright © 2018 Berdil İlyada Karacam. All rights reserved.
//

import UIKit

class UserFormLoginController: UIViewController {

    
    @IBOutlet weak var labelName: UILabel!{
        didSet{
            labelName.backgroundColor = #colorLiteral(red: 0.8424999118, green: 0.8157551289, blue: 1, alpha: 0)
            labelName.text = "Name: "
            labelName.font = UIFont(name: labelName.font.fontName, size: 15)
        }
    }
    
    @IBOutlet weak var labelSurname: UILabel!{
        didSet{
            labelSurname.backgroundColor = #colorLiteral(red: 0.8424999118, green: 0.8157551289, blue: 1, alpha: 0)
            labelSurname.text = "Surname: "
            labelSurname.font = UIFont(name: labelSurname.font.fontName, size: 15)
        }
    }
    
    @IBOutlet weak var labelTCNo: UILabel!{
        didSet{
            labelTCNo.backgroundColor = #colorLiteral(red: 0.8424999118, green: 0.8157551289, blue: 1, alpha: 0)
            labelTCNo.text = "TC No: "
            labelTCNo.font = UIFont(name: labelTCNo.font.fontName, size: 15)
        }
    }
    
    
    @IBOutlet weak var textName: UITextField!{
        didSet{
            textName.placeholder = " Adınızı Giriniz.."
            textName.layer.cornerRadius = 5
            textName.layer.borderWidth = 2
            textName.layer.borderColor = UIColor.black.cgColor
            
            textName.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//            textName.text = "TC No: "
            textName.font = UIFont(name: labelTCNo.font.fontName, size: 15)
        }
    }
    
    
    
    
    @IBOutlet weak var textSurname: UITextField!{
        didSet{
            textSurname.placeholder = " Soyadınızı Giriniz.."
            textSurname.layer.cornerRadius = 5
            textSurname.layer.borderWidth = 2
            textSurname.layer.borderColor = UIColor.black.cgColor
            
            textSurname.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
         //   textSurname.text = "TC No: "
            textSurname.font = UIFont(name: labelTCNo.font.fontName, size: 15)
        }
    }
    
    
    
    @IBOutlet weak var textTCNo: UITextField!{
        didSet{
            textTCNo.placeholder = " TC Kimlik Numaranızı Giriniz.."
            textTCNo.layer.cornerRadius = 5
            textTCNo.layer.borderWidth = 2
            textTCNo.layer.borderColor = UIColor.black.cgColor
            textTCNo.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            textTCNo.font = UIFont(name: labelTCNo.font.fontName, size: 15)
        }
    }
    
    
    
    
    
    
    @IBOutlet weak var buttonAccept: UIButton!{
        didSet{
            buttonAccept.layer.cornerRadius = 5
            buttonAccept.layer.borderWidth = 1
            buttonAccept.layer.borderColor = UIColor.white.cgColor
            
            buttonAccept.backgroundColor = #colorLiteral(red: 0.8424999118, green: 0.8157551289, blue: 1, alpha: 0)
            buttonAccept.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: UIControlState.normal)
            buttonAccept.setTitle("Sign Up!", for: UIControlState.normal)
            
           
            //SET GESTURE HERE!
            let gestureForButtonAccept = UITapGestureRecognizer(target: self, action: #selector(self.buttonTapped))
            buttonAccept.addGestureRecognizer(gestureForButtonAccept)
            
        }
    }
    
    @objc func buttonTapped(){
        //Call Presenter!
        print("button Tapped!")
        presenter?.FromPresenterToInteractor()
       // showAlert()
    }

    typealias P = UserFormLoginPresenter
    typealias R = UserFormLoginRouter
    typealias I = UserFormLoginInteractor

    
    var presenter: P?
    var router: R?
    var interactor: I?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.

    }
    
    override func viewDidAppear(_ animated: Bool) {
        configureViper()

    }
    func configureViper() {
        UserFormLoginRouter.setVIPER(viewController:self)
        
        
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    
    
}

extension UserFormLoginController{
    
    func showAlert(){
      //  if let viewController3 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FormVC") as? UserFormLoginController   {
            let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                switch action.style{
                case .default:
                    print("default")
                    
                case .cancel:
                    print("cancel")
                    
                case .destructive:
                    print("destructive")
                    
                    
                }}))
            self.present(alert, animated: true, completion: nil)
     //   }
    }


}

