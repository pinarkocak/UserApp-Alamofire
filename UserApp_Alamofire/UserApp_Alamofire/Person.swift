//
//  Person.swift
//  UserApp_URLSession
//
//  Created by Pınar Koçak on 25.04.2022.
//

class Person: Codable {
    var kisi_id: String?
    var kisi_ad: String?
    var kisi_tel: String?
    
    init(kisi_id: String, kisi_ad: String, kisi_tel: String) {
        self.kisi_tel = kisi_tel
        self.kisi_ad = kisi_ad
        self.kisi_id = kisi_id
    }
}
