//
//  ShowUserInfoRouter.swift
//  VIPERSample
//
//  Created by Berdil İlyada Karacam on 9.09.2018.
//  Copyright © 2018 Berdil İlyada Karacam. All rights reserved.
//

import Foundation
import UIKit

class ShowUserInfoRouter{
    
    
    
    
    typealias VC = ShowUserInfoController
    weak var viewController: VC?
    
    
    
    class func setVIPER(viewController: ShowUserInfoController){
        

        
        let router = ShowUserInfoRouter()
        let presenter = ShowUserInfoPresenter()
        let interactor = ShowUserInfoInteractor()
        
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
    
    func submitAccepted(){
        print("SUBMIT ACCEPTED")
        
        let userListController = UserListRouter.newInstance(delegate: self.viewController)
        userListController?.presenter?.addUserIntoList(newUser:  (viewController?.presenter?.getNewUser())! )
     
       // self.viewController?.dismiss(animated: true, completion: nil)
     //self.viewController?.navigationController?.popToViewController(userListController!, animated: true)
       // self.viewController?.present(userListController!, animated: true, completion: nil)
        self.viewController?.navigationController?.pushViewController(userListController!, animated: true)
    }
    func pressedBack(){
        
        self.viewController?.dismiss(animated: true, completion: nil)
    }
    
    class func newInstance(name: String, surname: String, no: String, gender: String, date:String, onay:Bool,delegate: UIViewController?) -> ShowUserInfoController? {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ShowVC") as! ShowUserInfoController
       
        viewController.presenter?.name = name
        viewController.presenter?.surname = surname
        viewController.presenter?.no = no
        viewController.presenter?.gender = gender
        viewController.presenter?.date = date
        viewController.presenter?.onay = onay
        
        return viewController
    }
  
    
}

