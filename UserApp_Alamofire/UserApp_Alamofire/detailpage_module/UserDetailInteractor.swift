//
//  UserDetailInteractor.swift
//  UserApp_Alamofire
//
//  Created by Pınar Koçak on 25.04.2022.
//

import Foundation
import Alamofire

class UserDetailInteractor: PresenterToInteractorKisiDetayProtocol {
    func kisiGuncelle(person_id: Int, person_name: String, person_number: String) {
        let params: Parameters = ["kisi_id":person_id,"kisi_ad":person_name,"kisi_tel":person_number]
        
        AF.request("http://kasimadalan.pe.hu/kisiler/update_kisiler.php", method: .post, parameters: params).response { response in
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
