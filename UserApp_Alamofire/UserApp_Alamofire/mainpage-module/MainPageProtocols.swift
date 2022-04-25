//
//  MainPageProtocols.swift
//  UserApp_Alamofire
//
//  Created by Pınar Koçak on 25.04.2022.
//

import Foundation

//MARK: Ana Protocoller
protocol ViewToPresenterAnaSayfaProtocol {
    var anaSayfaInteractor: PresenterToInteractorAnaSayfaProtocol? { get set }
    var anaSayfaView: PresenterToViewAnaSayfaProtocol? { get set }
    
    func fetch()
    func search(search: String)
    func delete(person_id: Int)
}

protocol PresenterToInteractorAnaSayfaProtocol {
    var anaSayfaPresenter: InteractorToPresenterAnaSayfaProtocol? { get set }
    
    func fetchAllPeople()
    func searchPerson(search: String)
    func deletePerson(person_id: Int)
}

//MARK: Taşıyıcı Protocoller
protocol InteractorToPresenterAnaSayfaProtocol {
    func sendDataToPresenter(personList: Array<Person>)
}

protocol PresenterToViewAnaSayfaProtocol {
    func sendDataToView(personList: Array<Person>)
}

protocol PresenterToRouterAnaSayfaProtocol {
    static func createModule(ref: MainViewController)
}

