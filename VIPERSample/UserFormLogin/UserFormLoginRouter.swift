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
    
    
    
   

    
    func pushResultToShow(_ result : User ){

        
        if let resultName=result.name,  let resultSurname = result.surname,  let resultNo=result.no, let resultGender=result.gender, let resultDate=result.date {
            let newVC = ShowUserInfoRouter.newInstance(name: resultName, surname: resultSurname, no: resultNo, gender: resultGender, date:resultDate,onay: false ,delegate: self.viewController)
            
           // self.viewController?.present(newVC!, animated: true, completion: nil)
            self.viewController?.navigationController?.pushViewController(newVC!, animated: true)
            
        }
    }
    

    
    func showAlertForEmptyInput()  {
     
                let alert = UIAlertController(title: "Hatalı Giriş!", message: "Formu Doldurunuz..", preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "😀", style: .default, handler: { action in
            self.alertActionHandler(action)
        }))
        
        alert.addAction(UIAlertAction(title: "☹️", style: .cancel, handler: { action in
                self.alertActionHandler(action)
            }))
        
      
        
        self.viewController?.present(alert, animated: true, completion: nil)
}
    
    
    func alertActionHandler(_ ac:UIAlertAction) {
        switch ac.style{
        case .default:
            print("default")

        case .cancel:
            print("cancel")

        case .destructive:
            print("destructive")


        }
    }
    
    
    
    class func newInstance(delegate: UIViewController?) -> UserFormLoginController? {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let viewController = storyboard.instantiateViewController(withIdentifier: "FormVC") as! UserFormLoginController
        
        return viewController
    }
    
    
    
    

}
