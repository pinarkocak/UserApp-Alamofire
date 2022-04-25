//
//  AddUserInteractor.swift
//  UserApp_Alamofire
//
//  Created by Pınar Koçak on 25.04.2022.
//

import Foundation
import Alamofire

class AddUserInteractor: PresenterToInteractorKisiKayitProtocol {
    func kisiEkle(person_name: String, person_number: String) {
        let params = ["kisi_ad":person_name, "kisi_tel":person_number]
        
        AF.request("http://kasimadalan.pe.hu/kisiler/insert_kisiler.php", method: .post, parameters: params).response { response in
            if let data = response.data {
                do {
                    if let json = try JSONSerialization.jsonObject(with: data) as? [String:Any] {
                        print(json)
                    }
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
  
    }
}

