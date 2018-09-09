//
//  UserFormLoginRouter.swift
//  VIPERSample
//
//  Created by Berdil İlyada Karacam on 9.09.2018.
//  Copyright © 2018 Berdil İlyada Karacam. All rights reserved.
//

import Foundation
import UIKit


class UserFormLoginRouter{
    
    
    typealias VC = UserFormLoginController
    weak var viewController: VC?
    
    
    
   class func setVIPER(viewController: UserFormLoginController){
    

        
//        VC.router = self
//        VC.interactor = interactor
//        VC.presenter = presenter
//
//
    
    let router = UserFormLoginRouter()
    let presenter = UserFormLoginPresenter()
    let interactor = UserFormLoginInteractor()
    
    viewController.router = router
    viewController.presenter = presenter
    viewController.interactor = interactor
    
    router.viewController = viewController
    
    interactor.controller = viewController
    interactor.presenter = presenter
    interactor.router = router
    
    presenter.router = router
    presenter.view = viewController
    presenter.interactor = interactor
    
    }
    
    
    
    func FromRouterToController(VC: UserFormLoginController){
        
        print("Router Worked!")
        //SignUpAccepted(VC2: UserFormLoginController)
        showAlert(controller: VC)
        
    }
    
    func SignUpAccepted(VC: UserFormLoginController) {

     //   let storyboard = UIStoryboard(name: "Main", bundle: nil)
      //  let linkingVC = storyboard.instantiateViewController(withIdentifier: "ShowVC")
//        VC?.navigationController?.pushViewController(linkingVC, animated: true)
    }
    
    
    func showAlert(controller viewController: UserFormLoginController){
        //  if let viewController3 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FormVC") as? UserFormLoginController   {
//        let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertControllerStyle.alert)
//        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
//            switch action.style{
//            case .default:
//                print("default")
//
//            case .cancel:
//                print("cancel")
//
//            case .destructive:
//                print("destructive")
//
//
//            }}))
        //viewController.showAlert()
           let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let linkingVC = storyboard.instantiateViewController(withIdentifier: "ShowVC")
        viewController.navigationController?.pushViewController(linkingVC, animated: true)
    }

    
}
