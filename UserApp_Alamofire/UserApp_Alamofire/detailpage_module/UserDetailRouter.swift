//
//  UserDetailRouter.swift
//  UserApp_Alamofire
//
//  Created by Pınar Koçak on 25.04.2022.
//

import Foundation

class UserDetailRouter: PresenterToRouterKisiDetayProtocol {
    static func createModule(ref: DetailViewController) {
        let presenter = UserDetailPresenter()
        
        ref.kisiDetayPresenter = presenter
        ref.kisiDetayPresenter?.kisiDetayInteractor = UserDetailInteractor()
    }
}
