//
//  TeslaViewModel.swift
//  MVVM_TeslaCarModels
//
//  Created by Suresh Sindam on 12/24/23.
//

import Foundation


class TeslaViewModel {
    private var carModelData: [TeslaModel] = []
    
    func fetchTeslaCarModels() {
        carModelData = TeslaCarModelsData.getCarModelData()
    }
    
    func noOfModels() -> Int {
        return carModelData.count
    }
    
    func model(at index: Int) -> TeslaModel {
        return carModelData[index]
    }
    
}
