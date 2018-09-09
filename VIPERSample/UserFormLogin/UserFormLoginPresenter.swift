//
//  UserFormLoginPresenter.swift
//  VIPERSample
//
//  Created by Berdil İlyada Karacam on 9.09.2018.
//  Copyright © 2018 Berdil İlyada Karacam. All rights reserved.
//

import Foundation


class UserFormLoginPresenter{
   
    
    
    typealias I = UserFormLoginInteractor
    typealias V = UserFormLoginController
    typealias R = UserFormLoginRouter
    
    weak var view: V?
    var router: R?
    var interactor: I?
    
    
    func FromPresenterToInteractor () {
        let textString = "MAL"
        guard let a =  view?.textName.text, a != "" else {
            print("Presenter Tapped Worked! \(textString)")
            return
        }
        print("Presenter Tapped Worked! \(a)")

        
      
        interactor?.fromInteractorToRouter()
        
    }
 
    
}
