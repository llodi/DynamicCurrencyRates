//
//  CurrencyRatesViewController.swift
//  currency
//
//  Created by Ilya on 02/03/2019.
//  Copyright © 2019 Ilya. All rights reserved.
//

import UIKit

class CurrencyRatesViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK - Public vars
    
    var output: CurrencyRatesViewOutput?
    var editableRowIndex: Int = 0
    
    // MARK - Private vars
    
    private var currencyRatesAdapter: CurrencyRatesAdapterProtocol? {
        didSet {
            tableView.dataSource = currencyRatesAdapter
            tableView.delegate = currencyRatesAdapter
        }
    }
    
    private var timer: Timer?
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.estimatedRowHeight = UITableView.automaticDimension
        tableView.register(cellType: CurrencyRateItemCell.self)
        
        output?.onViewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        output?.onViewWillAppear()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        output?.onViewWillDisappear()
    }

}
extension CurrencyRatesViewController: CurrencyRatesViewInput {

    // MARK: - CurrencyRatesViewProtocol
    
    func startTimer(with duration: Double) {
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: duration, repeats: true) { [weak weakSelf = self] (timer) in
            weakSelf?.output?.onInvokeTimer()
        }
    }
    
    func stopTimer() {
        timer?.invalidate()
    }
    
    func show(rates: [RatesViewModel]) {
        
        let adapter = CurrencyRatesAdapter(source: rates)
        
        adapter.editableRowIndex = editableRowIndex
        
        adapter.onChangeAmount = { [weak weakSelf = self] amount in
            weakSelf?.output?.onChange(amount: amount)
        }
        
        adapter.onSelectCurrency = { [weak weakSelf = self] currency in
            weakSelf?.output?.onSelect(currency: currency)
        }
        
        adapter.onRowMovingComplete = { [weak weakSelf = self] in
            if let cell = weakSelf?.tableView.visibleCells.first as? CurrencyRateItemCell {
                cell.currencyRateField.isUserInteractionEnabled = true
                cell.currencyRateField.becomeFirstResponder()
            }
        }
        
        currencyRatesAdapter = adapter
        
        CATransaction.begin()
        CATransaction.setCompletionBlock { [weak weakSelf = self] in
            weakSelf?.output?.onFullReloadTableFinish()
        }
        
        tableView.reloadData()
        CATransaction.commit()
        
    }
    
    func update(rates: [RatesViewModel]) {
        
        if let cells = tableView.visibleCells as? [CurrencyRateItemCell] {
            currencyRatesAdapter?.update(visibleCells: cells, source: rates)
        }
    }
    
    func showError(reason: String) {
        let alert = UIAlertController(title: nil, message: reason, preferredStyle: .alert)
        let action = UIAlertAction(title: Localization.ok, style: .cancel, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}


// MARK: - Localization

extension CurrencyRatesViewController {

    enum Localization {
        static let unknownMessage = _L("Повторите попытку позже")
        static let ok = _L("OK")
    }
}
