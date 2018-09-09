//
//  UserFormLoginIterator.swift
//  VIPERSample
//
//  Created by Berdil İlyada Karacam on 9.09.2018.
//  Copyright © 2018 Berdil İlyada Karacam. All rights reserved.
//

import Foundation

class UserFormLoginInteractor{
    
    
    
    
    
    typealias R = UserFormLoginRouter
    typealias P = UserFormLoginPresenter
    typealias C = UserFormLoginController
    
    var router = R()
    var presenter = P()
    var controller = C()
    
    
    
    
    func fromInteractorToRouter(){
        
        print("Interactor Worked!")
        router.FromRouterToController(VC: controller)
    }
}
