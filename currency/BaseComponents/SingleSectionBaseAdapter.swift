//
//  SingleSectionBaseAdapter.swift
//  
//
//  Created by Ilya Dolgopolov on 30.06.2018.
//  Copyright © 2018 Ilya. All rights reserved.
//

import UIKit

protocol TableDataSourceDelegate: UITableViewDelegate, UITableViewDataSource {}

class SingleSectionBaseAdapter<Element>: NSObject, TableDataSourceDelegate  {
    
    var source: [Element] = []
    var onSelectElement: ((Element) -> ()) = { elemsnt in }
    var onSelectIndex: (Int) -> () = {index in}
    
    var isSourceEmpty: Bool {
        return source.isEmpty
    }
    
    init(source: [Element]) {
        self.source = source
    }
    
    func update(source: [Element]) {
        self.source = source
    }
    
    func append(source: [Element]) {
        self.source.append(contentsOf: source)
    }
    
    //MARK: UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return source.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    //MARK: - UITableViewDelegate
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        onSelectIndex(indexPath.row)
        let element = source[indexPath.row]
        onSelectElement(element)
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return nil
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return nil
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return CGFloat.leastNonzeroMagnitude
    }
}

