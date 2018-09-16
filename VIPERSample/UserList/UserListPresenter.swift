//
//  UserListPresenter.swift
//  VIPERSample
//
//  Created by berdil karaçam on 10.09.2018.
//  Copyright © 2018 Berdil İlyada Karacam. All rights reserved.
//

import Foundation

class UserListPresenter {
    
    static var userList = [User]()
    // var userList = [User]()
    typealias V = UserListController
    typealias R = UserListRouter
    typealias I = UserListInteractor
    
    
    
    var name:String?
    var surname: String?
    var no:String?
    
//    struct newUserModel{
//        
//        var name:String
//        var surname: String
//        var no:String
//        var gender:String
//        var date:String
//        
//        init(userName:String,userSurname:String,userNo:String,userGender:String,userDate:String) {
//            self.name=userName
//            self.surname=userSurname
//            self.no=userNo
//            self.gender = userGender
//            self.date = userDate
//        }
//    }
    
    
    var viewController: V?
    var router: R?
    var interactor: I?
    
    
    
    func getCellObject(index:Int) ->User {
    
        
       return (UserListPresenter.userList[index])
        // return (userList[index])
    }
    
    
    func addUserIntoList(newUser : User){
        
    //
         UserListPresenter.userList.append(newUser)
       // userList.append(newUser)
        
    }
    
    func numberOfRows() -> Int {
      return UserListPresenter.userList.count
          //  return  userList.count
    }
    
    func didSelectCell(at row:Int) {
        //call router !
        
        router?.showDetailForSelectedRow(at: row)
        print("\(row) Selected.")
        
    }
    
    func addNewUserTapped(){
        
        
        router?.showUserFormLoginController()
        
        
    }
    
}
