//
//  CarModelsVC.swift
//  MVVM_TeslaCarModels
//
//  Created by Suresh Sindam on 12/24/23.
//

import UIKit

class CarModelsVC: UIViewController {
    
    @IBOutlet weak var carModelCV: UICollectionView!
    
    private var viewModel = TeslaViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchTeslaCarModels()
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 120, height: 220)
        carModelCV.collectionViewLayout = layout
    }
    
    
    
}

extension CarModelsVC: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.noOfModels()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CarModelCell.identifier, for: indexPath) as! CarModelCell
        let model = viewModel.model(at: indexPath.row)
        cell.configureCell(with: model)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = collectionView.bounds.width - 20
        let cellHeight = 260.0
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    
}
