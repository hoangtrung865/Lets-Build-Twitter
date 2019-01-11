//
//  HomeDatasource.swift
//  Swift_Twitter
//
//  Created by HD WebSoft on 1/11/19.
//  Copyright © 2019 HD WebSoft. All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource {
    let words = ["Nghia Nguyen" , "Ninja 300", "CBR 650R"];
    override func numberOfItems(_ section: Int) -> Int {
        return words.count
    }
    override func item(_ indexPath: IndexPath) -> Any? {
        return words[indexPath.item]
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [HeaderCell.self]
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [FooterCell.self]
    }
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
}
