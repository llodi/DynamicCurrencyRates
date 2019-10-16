//
//  CurrencyRatesAdapter.swift
//  currency
//
//  Created by Ilya on 02/03/2019.
//  Copyright © 2019 Ilya. All rights reserved.
//

import UIKit

protocol CurrencyRatesAdapterProtocol: TableDataSourceDelegate {
    
    var editableRowIndex: Int { get set }
    
    var onChangeAmount: ((String) -> ())? { get set }
    var onSelectCurrency: ((String) -> ())? { get set }
    var onRowMovingComplete: (() -> ())? { get set }
    
    func update(visibleCells: [CurrencyRateItemCell], source: [RatesViewModel])
}

class CurrencyRatesAdapter: SingleSectionBaseAdapter<RatesViewModel>, CurrencyRatesAdapterProtocol {
    
    var editableRowIndex: Int = 0
    
    var onChangeAmount: ((String) -> ())?
    var onSelectCurrency: ((String) -> ())?
    var onRowMovingComplete: (() -> ())?
    
    func update(visibleCells: [CurrencyRateItemCell],
                source: [RatesViewModel]) {

        update(new: source)
        update(cells: visibleCells)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return source.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = source[indexPath.row]
        
        let cell: CurrencyRateItemCell = tableView.dequeueReusableCell(for: indexPath)
        
        cell.currencyName.text = item.currency
        cell.currencyRateField.text = item.rate
        cell.currencyRateField.isUserInteractionEnabled = false
        
        cell.onEditingChanged = { [weak weakSelf = self] value in
            weakSelf?.onChangeAmount?(value)
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = source[indexPath.row]
        
        if let ind = source.firstIndex(where: { $0.currency == item.currency }) {
            CATransaction.begin()
            CATransaction.setCompletionBlock { [weak weakSelf = self] in
                weakSelf?.onSelectCurrency?(item.currency)
                weakSelf?.onChangeAmount?(item.rate)
                weakSelf?.onRowMovingComplete?()
            }
            
            source.remove(at: ind)
            source.insert(item, at: editableRowIndex)
            tableView.moveRow(at: indexPath, to: IndexPath(row: editableRowIndex, section: indexPath.section))
            tableView.scrollToRow(at: IndexPath(row: editableRowIndex, section: indexPath.section), at: .top, animated: true)
            
            CATransaction.commit()
        }
    }
    
    
    // MARK: - Private methods
    
    private func update(new: [RatesViewModel]) {
        for (index, item) in source.enumerated() {
            if index == editableRowIndex { continue }
            
            if let found = new.first(where: { $0.currency == item.currency }) {
                item.rate = found.rate
            }
        }
    }
    
    private func update(cells: [CurrencyRateItemCell]) {
        for (index, cell) in cells.enumerated() {
            if index == editableRowIndex { continue }
            
            if let found = source.first(where: { $0.currency == cell.currencyName.text }) {
                cell.currencyRateField.text = found.rate
            }
        }
    }
    
}
