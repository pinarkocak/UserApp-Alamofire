//
//  AddUserPresenter.swift
//  UserApp_Alamofire
//
//  Created by Pınar Koçak on 25.04.2022.
//

class AddUserPresenter: ViewToPresenterKisiKayitProtocol {
    var kisiKayitInteractor: PresenterToInteractorKisiKayitProtocol?
    
    func ekle(person_name: String, person_number: String) {
        kisiKayitInteractor?.kisiEkle(person_name: person_name, person_number: person_number)
    }
}

