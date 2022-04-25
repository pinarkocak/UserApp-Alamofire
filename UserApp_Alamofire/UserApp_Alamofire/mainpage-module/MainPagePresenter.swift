//
//  MainPagePresenter.swift
//  UserApp_Alamofire
//
//  Created by Pınar Koçak on 25.04.2022.
//

class MainPagePresenter: ViewToPresenterAnaSayfaProtocol {
    var anaSayfaInteractor: PresenterToInteractorAnaSayfaProtocol?
    
    var anaSayfaView: PresenterToViewAnaSayfaProtocol?
    
    func fetch() {
        anaSayfaInteractor?.fetchAllPeople()
    }
    
    func search(search: String) {
        anaSayfaInteractor?.searchPerson(search: search)
    }
    
    func delete(person_id: Int) {
        anaSayfaInteractor?.deletePerson(person_id: person_id)
    }
}

extension MainPagePresenter: InteractorToPresenterAnaSayfaProtocol {
    func sendDataToPresenter(personList: Array<Person>) {
        anaSayfaView?.sendDataToView(personList: personList)
    }
}

