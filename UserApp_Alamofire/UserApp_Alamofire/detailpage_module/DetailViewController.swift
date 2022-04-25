//
//  DetailViewController.swift
//  UserApp_Alamofire
//
//  Created by Pınar Koçak on 12.04.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldNumber: UITextField!
    
    var kisiDetayPresenter: ViewToPresenterKisiDetayProtocol?
    
    var person: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let p = person {
            textFieldName.text = p.kisi_ad
            textFieldNumber.text = p.kisi_tel
        }
        
        UserDetailRouter.createModule(ref: self)
    }
    
    @IBAction func btnUpdate(_ sender: Any) {
        if let pName = textFieldName.text, let pNumber = textFieldNumber.text, let p = person {
            kisiDetayPresenter?.guncelle(person_id: Int(p.kisi_id!)!, person_name: pName, person_number: pNumber)
        }
    }
}
