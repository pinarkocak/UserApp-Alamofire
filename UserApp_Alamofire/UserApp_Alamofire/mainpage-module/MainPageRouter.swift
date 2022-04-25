//
//  MainPageRouter.swift
//  UserApp_Alamofire
//
//  Created by Pınar Koçak on 25.04.2022.
//

import Foundation

class MainPageRouter: PresenterToRouterAnaSayfaProtocol {
    static func createModule(ref: MainViewController) {
        let presenter = MainPagePresenter()
        
        //View
        ref.anaSayfaPresenterObj = presenter
        
        //Presenter
        ref.anaSayfaPresenterObj?.anaSayfaInteractor = MainPageInteractor()
        ref.anaSayfaPresenterObj?.anaSayfaView = ref
        
        //Interactor
        ref.anaSayfaPresenterObj?.anaSayfaInteractor?.anaSayfaPresenter = presenter
        
    }
}

