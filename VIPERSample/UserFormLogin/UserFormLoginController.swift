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
            labelTCNo.text = "No: "
            labelTCNo.font = UIFont(name: labelTCNo.font.fontName, size: 15)
        }
    }
    
    //if u set border on textfield, cursor will be dissappear so
    //add border on that view.
    @IBOutlet weak var textNameView: UIView!{
        didSet
        {
            textNameView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            textNameView.layer.cornerRadius = 5
            textNameView.layer.borderWidth = 2
            
        }
        
    }
    @IBOutlet weak var textName: UITextField!{
        didSet{
            textName.placeholder = " Adınızı Giriniz.."
         
            textName.layer.borderColor = UIColor.black.cgColor
       
            textName.endEditing(true)
            
            textName.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            textName.font = UIFont(name: labelTCNo.font.fontName, size: 15)
            

        }
    }

    
    //if u set border on textfield, cursor will be dissappear so
    //add border on that view.
    @IBOutlet weak var textSurnameView: UIView!{
        didSet{
            textSurnameView.layer.cornerRadius = 5
            textSurnameView.layer.borderWidth = 2
            textSurnameView.layer.borderColor = UIColor.black.cgColor
            textSurnameView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

        }
    }
    
    @IBOutlet weak var textSurname: UITextField!{
        didSet{
            textSurname.placeholder = " Soyadınızı Giriniz.."
      
            textSurname.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            textSurname.font = UIFont(name: labelTCNo.font.fontName, size: 15)
        }
    }
    
    //if u set border on textfield, cursor will be dissappear so
    //add border on that view.
    @IBOutlet weak var textTCView: UIView!{
        didSet{
            textTCView.layer.cornerRadius = 5
            textTCView.layer.borderWidth = 2
            textTCView.layer.borderColor = UIColor.black.cgColor
            textTCView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

            
        }
    }
    
    @IBOutlet weak var textTCNo: UITextField!{
        didSet{
            textTCNo.placeholder = " TC Kimlik Numaranızı Giriniz.."
   
            textTCNo.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            textTCNo.font = UIFont(name: labelTCNo.font.fontName, size: 15)
//            if textTCNo.text?.characters.count == 4 {
//                  textTCNo.text?.characters.removeLast()
//            }
           
        }
    }

    @IBOutlet weak var lblGender: UILabel!{
        didSet{
            
            lblGender.backgroundColor = #colorLiteral(red: 0.8424999118, green: 0.8157551289, blue: 1, alpha: 0)
            lblGender.text = "Cinsiyet: "
            lblGender.font = UIFont(name: labelName.font.fontName, size: 15)
            
        }
    }
    @IBOutlet weak var checkBoxMan: CheckBox!{
        didSet{
            
            checkBoxMan.type = TypeofGender.man
            checkBoxMan.isChecked = true
          let checkBoxGesture = UITapGestureRecognizer(target: self, action: #selector(self.checkBoxManClicked))
            
          checkBoxMan.addGestureRecognizer(checkBoxGesture)
            
            
            
        }
    }
    
    @IBOutlet weak var lblMan: UILabel!{
        didSet{

            lblMan.backgroundColor = #colorLiteral(red: 0.8424999118, green: 0.8157551289, blue: 1, alpha: 0)
            lblMan.text = "Erkek"
            lblMan.font = UIFont(name: labelName.font.fontName, size: 15)
            
        }
    }
    
    
    @IBOutlet weak var checkBoxWoman: CheckBox!{
        didSet{
            checkBoxWoman.type = TypeofGender.woman
            let checkBoxGesture = UITapGestureRecognizer(target: self, action: #selector(checkBoxWomanClicked))

            checkBoxWoman.addGestureRecognizer(checkBoxGesture)

            
            
            
        }
    }
    
    @objc func checkBoxWomanClicked(_ recognizer:UITapGestureRecognizer){
        
        let sender = recognizer.view as? CheckBox
        presenter?.setCheckboxClickEvent(sender!)

    }
    
    @objc func checkBoxManClicked(_ recognizer:UITapGestureRecognizer){
        
        let sender = recognizer.view as? CheckBox
        presenter?.setCheckboxClickEvent(sender!)
        
    }
    
    
    @IBOutlet weak var lblWoman: UILabel!{
         didSet{
            
            lblWoman.backgroundColor = #colorLiteral(red: 0.8424999118, green: 0.8157551289, blue: 1, alpha: 0)
            lblWoman.text = "Kadın"
            lblWoman.font = UIFont(name: labelName.font.fontName, size: 15)
            
        }
    }
    @IBOutlet weak var datePicker: UIDatePicker!{
        didSet{
            
        }
    }
    
    @IBOutlet weak var buttonAccept: UIButton!{
        didSet{
            buttonAccept.layer.cornerRadius = 5
            buttonAccept.layer.borderWidth = 1
            buttonAccept.layer.borderColor = UIColor.black.cgColor
            
            buttonAccept.backgroundColor = #colorLiteral(red: 0.8424999118, green: 0.8157551289, blue: 1, alpha: 0)
            buttonAccept.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: UIControlState.normal)
            buttonAccept.setTitle("Submit!", for: UIControlState.normal)
            
           
            //SET GESTURE HERE!
            let gestureForButtonAccept = UITapGestureRecognizer(target: self, action: #selector(self.acceptButtonTapped))
            buttonAccept.addGestureRecognizer(gestureForButtonAccept)
            
        }
    }
    
    @objc func acceptButtonTapped(){
        //Call Presenter!
        print("button Tapped!")
        let date : String = datePicker.date.localizedDescription
        if(textName.text != "" && textSurname.text != "" && textTCNo.text != "" && (checkBoxWoman.isChecked || checkBoxMan.isChecked  ) ){
            if isGenderManCheck(){
                presenter?.submitForm(name: textName.text!,surname: textSurname.text!,no: textTCNo.text!,gender:"Erkek",dateDesc:date)

            }
            else if isGenderWomanCheck(){
                presenter?.submitForm(name: textName.text!,surname: textSurname.text!,no: textTCNo.text!,gender:"Kadın",dateDesc:date)
            }
            else {
                presenter?.showAlertforEmptyInput()
            }
        }
            
        else {
            //call presenterShowAlert
            presenter?.showAlertforEmptyInput()
        }
        
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

        
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
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
    
   
    func isGenderManCheck() -> Bool {
        return checkBoxMan.isChecked
    }
    
    func isGenderWomanCheck() -> Bool {
        return checkBoxWoman.isChecked
    }

    
    func setGenderCheckboxView (checkForMan : Bool, checkForWoman: Bool) {
        
        checkBoxMan.isChecked = checkForMan
        checkBoxWoman.isChecked = checkForWoman
     
        checkBoxMan.setClickImage()
        checkBoxWoman.setClickImage()

    }
    
}
extension Date {
    
    //get date for location
    var localizedDescription: String {
        return description(with: .current)
    }
}
