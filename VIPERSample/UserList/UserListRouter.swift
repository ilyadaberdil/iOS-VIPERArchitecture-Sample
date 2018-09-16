//
//  UserListRouter.swift
//  VIPERSample
//
//  Created by berdil karaçam on 10.09.2018.
//  Copyright © 2018 Berdil İlyada Karacam. All rights reserved.
//

import Foundation
import UIKit
class UserListRouter {
    
    
    typealias VC = UserListController
    weak var viewController: VC?
    
    
    
    class func setVIPER(viewController: UserListController){
        
        
        let router = UserListRouter()
        let presenter = UserListPresenter()
        let interactor = UserListInteractor()
        
        viewController.router = router
        viewController.presenter = presenter
        viewController.interactor = interactor
        
        router.viewController = viewController
        
        interactor.viewController = viewController
        interactor.presenter = presenter
        interactor.router = router
        
        presenter.router = router
        presenter.viewController = viewController
        presenter.interactor = interactor
        
    }
    
    
    class func newInstance( delegate: ShowUserInfoController?) -> UserListController? {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "UserList") as! UserListController
     
        
        
        return viewController
    }
    
    func showDetailForSelectedRow( at index:Int){
     let newUser = User()
        newUser.name =    UserListPresenter.userList[index].name//viewController?.presenter?.userList[index].name // UserListPresenter.userList[index].name
        newUser.surname =    UserListPresenter.userList[index].surname//viewController?.presenter?.userList[index].surname //UserListPresenter.userList[index].surname
        newUser.date =   UserListPresenter.userList[index].date //viewController?.presenter?.userList[index].date //UserListPresenter.userList[index].date
        newUser.no =    UserListPresenter.userList[index].no//viewController?.presenter?.userList[index].no //UserListPresenter.userList[index].no
        newUser.gender =    UserListPresenter.userList[index].gender //viewController?.presenter?.userList[index].gender //UserListPresenter.userList[index].gender
        
        let showVC =   ShowUserInfoRouter.newInstance(name: UserListPresenter.userList[index].name!, surname: UserListPresenter.userList[index].surname!, no: UserListPresenter.userList[index].no!, gender: UserListPresenter.userList[index].gender!, date: UserListPresenter.userList[index].date!, onay: true ,delegate: UserListController.self as? UIViewController)
        
       // let showVC =   ShowUserInfoRouter.newInstance(name: ( viewController?.presenter?.userList[index].name)!,
       //                                               surname: (viewController?.presenter?.userList[index].surname)!,
         //                                             no: (viewController?.presenter?.userList[index].no)!,
           //                                           gender: (viewController?.presenter?.userList[index].gender)!,
             //                                         date: (viewController?.presenter?.userList[index].date)!,
               //                                       onay: true ,delegate: self.viewController)
        
        self.viewController?.present(showVC!, animated: true, completion: nil)
    }
    
    
    
    func showUserFormLoginController(){
        
          let showVC = UserFormLoginRouter.newInstance(delegate:  self.viewController)
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//
//        let showVC = storyboard.instantiateViewController(withIdentifier: "FormVC") as! UserFormLoginController
//
        //let navigationController = UINavigationController(rootViewController: showVC!)
        //self.viewController?.present(navigationController , animated: true, completion: nil)
        
        self.viewController?.dismiss(animated: true, completion: nil)
        self.viewController?.navigationController?.popToRootViewController(animated: true)
        
        
        
    }
    
    
}
