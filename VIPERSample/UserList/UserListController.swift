//
//  UserListController.swift
//  VIPERSample
//
//  Created by berdil karaçam on 10.09.2018.
//  Copyright © 2018 Berdil İlyada Karacam. All rights reserved.
//

import Foundation
import UIKit
protocol TableViewProtocol{
    
}
class UserListController : UIViewController {



    @IBOutlet weak var lblListHeader: UITextField!{
        didSet{
            
            lblListHeader.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            lblListHeader.backgroundColor = #colorLiteral(red: 0.8088594675, green: 0.773573935, blue: 0.8187345862, alpha: 0)
            lblListHeader.text = "User List" 
            lblListHeader.minimumFontSize = 25.0
        }
        
        
        
    }
    
    

    
    
    @IBOutlet weak var userListTableView: UITableView!{
        didSet{
            
//            let viewModel = CeptetebEmptyTableViewCellModel(imageType: .onSurface, title: Strings.bireysel_onayIslemleri_TalimatYokUyari, subtitle: "")
//            tableAdapter = CeptetebTableViewAdapter(tableView: tableView, dataSource: self, viewModel: viewModel)
//            tableAdapter.canUseEmptyDataSource = true
//            tableView.backgroundColor = .clear
//            tableView.dataSource = tableAdapter
//            tableView.delegate = self
//            tableView.register(KurumsalTalimatListeTableViewCell.self)
//            tableView.rowHeight = UITableViewAutomaticDimension
//            tableView.estimatedRowHeight = 71.0
//            tableView.subscribe(toSeparatorColor: { () -> UIColor in
//                return Theme.properties.separatorColor
//            })
//            tableView.tableFooterView = UIView()
            
            
         
            
            userListTableView.dataSource = self
            userListTableView.delegate = self
            
        }
        
    }
    
    
    
    
    
    @IBOutlet weak var buttonAddNewUser: UIButton!{
        didSet{
            
            buttonAddNewUser.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            buttonAddNewUser.layer.borderWidth = 1.0
            buttonAddNewUser.layer.borderColor = UIColor.black.cgColor
            
            buttonAddNewUser.backgroundColor = #colorLiteral(red: 0.8424999118, green: 0.8157551289, blue: 1, alpha: 0)
            buttonAddNewUser.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: UIControlState.normal)
         
            buttonAddNewUser.setTitle("Add New User", for: UIControlState.normal)
            
            
            //SET GESTURE HERE!
            let gestureForButtonAccept = UITapGestureRecognizer(target: self, action: #selector(self.addNewUserButtonTapped))
            buttonAddNewUser.addGestureRecognizer(gestureForButtonAccept)
        }
        
    }
    @objc func addNewUserButtonTapped () {
        
        //Call Presenter!
        print("Add NewUser Tapped!")
        
        presenter?.addNewUserTapped()
        
        
        
    }
    
    
    
    
    typealias P = UserListPresenter
    typealias R = UserListRouter
    typealias I = UserListInteractor
    
    
    var presenter: P?
    var router: R?
    var interactor: I?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.

    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureViper()
    }
    
    //set Viper from router!
    func configureViper() {
        UserListRouter.setVIPER(viewController: self)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    



}


extension UserListController :  UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
       
        return presenter?.numberOfRows() ?? 0 
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //For Classic Row
//        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath as IndexPath)
//        cell.textLabel?.text = "Cell Sample"
//
//        cell.textLabel?.textColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
//
//
//        return cell

        //For Custom Row
        let cell = Bundle.main.loadNibNamed("CustomRowForUserList", owner: self, options: nil)?.first as! CustomRowForUserList
        
        // Değerleri istediğimiz gibi Atayalım Bir datasource içerisinden alacaksanız
        //indexpath kullanarak değerlerinizi alabilirsiniz.
        
        guard let user: User = (presenter?.getCellObject(index: indexPath.row)) else {
            return cell
        }
        
        cell.lblName.text = user.name
        cell.lblSurname.text = user.surname
        cell.lblGender.text = user.gender
        cell.lblNo.text = user.no
        cell.lblDate.text = user.date
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.didSelectCell(at: indexPath.row)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func reloadTableView() {
        userListTableView.reloadData()
        
    }
    
    

    
    
}





