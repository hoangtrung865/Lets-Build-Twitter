//
//  HomeDatasourceController.swift
//  Swift_Twitter
//
//  Created by HD WebSoft on 1/11/19.
//  Copyright © 2019 HD WebSoft. All rights reserved.
//

import LBTAComponents

class HomeDatasourceController: DatasourceController {

    override func viewDidLoad() {
        super.viewDidLoad();
        let homeDatasource = HomeDatasource()
        self.datasource = homeDatasource
    }
    
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.height, height: 100)
    }
}
