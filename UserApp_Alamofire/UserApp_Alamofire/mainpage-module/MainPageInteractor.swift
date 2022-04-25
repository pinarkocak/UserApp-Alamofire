//
//  MainPageInteractor.swift
//  UserApp_Alamofire
//
//  Created by Pınar Koçak on 25.04.2022.
//

import Foundation
import Alamofire

class MainPageInteractor: PresenterToInteractorAnaSayfaProtocol {
    var anaSayfaPresenter: InteractorToPresenterAnaSayfaProtocol?
    
    func fetchAllPeople() {
        AF.request("http://kasimadalan.pe.hu/kisiler/tum_kisiler.php", method: .get).response { response in
            
            if let data = response.data {
                do {
                    
                    let result = try JSONDecoder().decode(PersonResult.self, from: data)
                    if let list = result.kisiler {
                        self.anaSayfaPresenter?.sendDataToPresenter(personList: list)
                    }
                    
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    func searchPerson(search: String) {
        let params:Parameters = ["kisi_ad":search]
        
        AF.request("http://kasimadalan.pe.hu/kisiler/tum_kisiler_arama.php", method: .post, parameters: params).response { response in
            if let data = response.data {
                do {
                    
                    let result = try JSONDecoder().decode(PersonResult.self, from: data)
                    if let list = result.kisiler {
                        self.anaSayfaPresenter?.sendDataToPresenter(personList: list)
                    }
                    
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    func deletePerson(person_id: Int) {
        let params = ["kisi_id":person_id]
        
        AF.request("http://kasimadalan.pe.hu/kisiler/delete_kisiler.php", method: .post, parameters: params).response { response in
            
            if let data = response.data {
                do {
                    if let json = try JSONSerialization.jsonObject(with: data) as? [String:Any] {
                        print(json)
                        self.fetchAllPeople()
                    }
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
}

