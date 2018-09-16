//
//  UserFormLoginPresenter.swift
//  VIPERSample
//
//  Created by Berdil İlyada Karacam on 9.09.2018.
//  Copyright © 2018 Berdil İlyada Karacam. All rights reserved.
//

import Foundation

class UserFormLoginPresenter{
   
    class ResultViewModel {
        var name: String?
        var surname: String?
        var no: String?
        var gender: String?
        var date : String?
    }
    
    
    typealias I = UserFormLoginInteractor
    typealias V = UserFormLoginController
    typealias R = UserFormLoginRouter
    
    weak var view: V?
    var router: R?
    var interactor: I?
    
    
    
    func submitForm (name:String, surname:String, no:String, gender : String,dateDesc:String) {

        //CLOSURE SAMPLE - Create ViewModel
        let viewModelClosure: ( String, String, String, String, String) -> ResultViewModel =
        { (userName , userSurname, userNo, userGender,dateDesc) in
            let resultObject = UserFormLoginPresenter.ResultViewModel()
            
            resultObject.name = userName
            resultObject.surname = userSurname
            resultObject.no = userNo
            resultObject.gender = gender
            resultObject.date = dateDesc
            return resultObject
        }
        
        
        let newUser : User? = self.interactor!.createNewUser(viewModel: viewModelClosure(name,surname,no, gender,dateDesc))

       
        
        
        //with closure..
        guard let user = newUser else { return }
        router?.pushResultToShow(user)
     
    
        
    }
    

    func showAlertforEmptyInput(){
        router?.showAlertForEmptyInput()
    }
    
    func setCheckboxClickEvent(_ sender:CheckBox) {
        
        if case .man? = sender.type {
        if (sender.isChecked == true) {
            view?.setGenderCheckboxView(checkForMan:false, checkForWoman : false)
            }
            else {
            view?.setGenderCheckboxView(checkForMan:true, checkForWoman:false)
            }
        }
        else {
            if (sender.isChecked == true) {
                view?.setGenderCheckboxView(checkForMan:false,checkForWoman:false)
            }
            else {
                view?.setGenderCheckboxView(checkForMan:false,checkForWoman:true)
            }
        }
        



    }

    
}
