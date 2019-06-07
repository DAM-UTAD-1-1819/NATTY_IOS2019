//
//  CategoriasViewController.swift
//  APPTRABAJO
//
//  Created by NATALIA PAVAN SOTO on 21/5/19.
//  Copyright © 2019 NATALIA PAVAN SOTO. All rights reserved.
//

/*import UIKit

class CategoriasViewController: UIViewController {
    // MARK: - IBOutlets -
    @IBOutlet weak var mCollectionView: UICollectionView!
    
    // MARK: - Properties -
    private var Categorias: Array<Categorias>? = nil
    private let mCellSpacing: CGFloat = 16.0
    
    
    // MARK: - Lifecycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
        
        loadData()
        
        mCollectionView.reloadData()
    }
    
    // MARK: - Configuration -
    private func configureTableView() {
        mCollectionView.delegate = self as UICollectionViewDelegate
        mCollectionView.dataSource = self as UICollectionViewDataSource
    }
    
    // MARK: - Configuration -
    private func loadData() {
        Categorias = defaultCategorias
    }
}



extension CategoriasViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let selectedPosition = sender as? IndexPath else {
            return
        }
        
     
        if let destinationController = segue.destination as? CategoriasDetailViewController {
            destinationController.delegate = self
            destinationController.data = Categorias?[selectedPosition.row]
        }
    }
}



extension CategoriasViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return defaultCategoria.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoriasViewCell.mIdentifier,
                                                      for: indexPath) as! CategoriasViewCell
       
        if let categorias = Categorias?[indexPath.row] {
            
            cell.configureCell(data: defaultCategoria)
        }
        
        return cell
    }
    

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let size = collectionView.frame.size.width / 2
        return CGSize(width: size - mCellSpacing,
                      height: size - mCellSpacing)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return mCellSpacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout
        collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return mCellSpacing
    }
  
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
      
        performSegue(withIdentifier: segueToCategorias,
                     sender: indexPath)
    }
}



extension CategoriasViewController: CategoriasDetailDelegate {
    func onDelete(categorias: Categorias?) {
        guard let categoriasDelete = Categorias else {
            return
        }
        
        Categorias?.removeAll(where: { $0.name == categoriasDelete.name })
        mCollectionView.reloadData()
    }
*/

