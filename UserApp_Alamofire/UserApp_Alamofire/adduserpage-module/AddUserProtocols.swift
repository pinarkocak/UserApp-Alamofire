//
//  AddUserProtocols.swift
//  UserApp_Alamofire
//
//  Created by Pınar Koçak on 25.04.2022.
//

protocol ViewToPresenterKisiKayitProtocol {
    var kisiKayitInteractor: PresenterToInteractorKisiKayitProtocol? { get set }
    
    func ekle(person_name: String, person_number: String)
}

protocol PresenterToInteractorKisiKayitProtocol {
    func kisiEkle(person_name: String, person_number: String)
}

protocol PresenterToRouterLKisiKayitProtocol {
    static func createModule(ref: AddUserViewController)
}

