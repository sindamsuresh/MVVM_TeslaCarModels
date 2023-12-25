//
//  TeslaCarModelsData.swift
//  MVVM_TeslaCarModels
//
//  Created by Suresh Sindam on 12/24/23.
//

import Foundation

struct TeslaCarModelsData {
    static func getCarModelData() -> [TeslaModel] {
        let carModelsArr: [TeslaModel] = [
            TeslaModel(modelName: "Tesla\nModel S", modelImgStr: "ModelS"),
            TeslaModel(modelName: "Cybertruck", modelImgStr: "Cybertruck"),
            TeslaModel(modelName: "Model 3", modelImgStr: "Model3"),
            TeslaModel(modelName: "Roadster", modelImgStr: "Roadster"),
            TeslaModel(modelName: "Model X", modelImgStr: "ModelX"),
            TeslaModel(modelName: "Semi", modelImgStr: "Semi"),
            TeslaModel(modelName: "Model Y", modelImgStr: "ModelY")
        ]
        return carModelsArr
    }
}
