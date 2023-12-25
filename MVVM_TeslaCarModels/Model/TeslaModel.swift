//
//  TeslaModel.swift
//  MVVM_TeslaCarModels
//
//  Created by Suresh Sindam on 12/24/23.
//

import Foundation
import UIKit


struct TeslaModel {
    let modelName: String?
    let modelImgStr: String?
    
    var image: UIImage? {
        return modelImgStr.flatMap(UIImage.init(named: ))
    }
    
}
