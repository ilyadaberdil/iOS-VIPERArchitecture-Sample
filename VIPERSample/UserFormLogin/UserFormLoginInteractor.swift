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
    
    
    
    func createNewUser( viewModel : UserFormLoginPresenter.ResultViewModel) -> User {
    
    let newUser = User()
    
        newUser.name = viewModel.name
        newUser.surname = viewModel.surname
        newUser.no = viewModel.no
        newUser.gender = viewModel.gender
        newUser.date = viewModel.date
        return newUser
        
    }
    //CLOSURE SAMPLE - Create User Object
    //        let setResultClosure : (UserFormLoginPresenter.ResultViewModel) -> User =
    //        {( viewModel : UserFormLoginPresenter.ResultViewModel) -> User in
    //
    //        let newUser = User()
    //
    //        newUser.name = viewModel.name
    //        newUser.surname = viewModel.surname
    //        newUser.no = viewModel.no
    //        return newUser
    //    }

}
