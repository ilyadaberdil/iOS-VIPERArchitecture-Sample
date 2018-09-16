//
//  ShowUserInfoPresenter.swift
//  VIPERSample
//
//  Created by Berdil İlyada Karacam on 9.09.2018.
//  Copyright © 2018 Berdil İlyada Karacam. All rights reserved.
//

import Foundation


class ShowUserInfoPresenter {
    
    
    typealias V = ShowUserInfoController
    typealias R = ShowUserInfoRouter
    typealias I = ShowUserInfoInteractor
    
    
    class ResultViewModel {
        var name:String?
        var surname: String?
        var no:String?
        var gender:String?
        var date:String?
    }
    var name:String?
    var surname: String?
    var no:String?
    var gender:String?
    var date:String?
    var onay:Bool?

    
    var viewController: V?
    var router: R?
    var interactor: I?
    
    
    
    
    func submitAccepted(){
        if (onay)!{
            router?.pressedBack()
        }
        else{
            router?.submitAccepted()

        }
    }
    
    func setNewUser()  {
        
        viewController?.txtName.text = name
        viewController?.txtSurname.text = surname
        viewController?.txtNo.text = no
        viewController?.txtGender.text = gender
        viewController?.txtDate.text = date
    }
    
    func getNewUser() -> User {
        let newUser = User()
        newUser.name = name
        newUser.surname = surname
        newUser.no = no
        newUser.gender = gender
        newUser.date = date
        
        return newUser
        
    }
}
