//
//  CarModelCell.swift
//  MVVM_TeslaCarModels
//
//  Created by Suresh Sindam on 12/24/23.
//

import UIKit

class CarModelCell: UICollectionViewCell {
    
    @IBOutlet weak var modelName: UILabel!
    @IBOutlet weak var modelImg: UIImageView!
    
    static let identifier = "CarModelCell"
    
    
    func configureCell(with model: TeslaModel) {
        modelName.text = model.modelName
        modelImg.image = model.image
    }
    
    
}
