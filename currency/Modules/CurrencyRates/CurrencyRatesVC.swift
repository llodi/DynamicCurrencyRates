//
//  CurrencyRatesVC.swift
//  currency
//
//  Created by Ilya on 02/03/2019.
//  Copyright © 2019 Ilya. All rights reserved.
//

import UIKit

class CurrencyRatesVC: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK - Public vars
    
    var presenter: CurrencyRatesPresenterProtocol?
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
        
        presenter?.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        presenter?.viewWillAppear()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        presenter?.viewWillDisappear()
    }

}
extension CurrencyRatesVC: CurrencyRatesViewProtocol {

    // MARK: - CurrencyRatesViewProtocol
    
    func startTimer(with duration: Double) {
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: duration, repeats: true) { [weak weakSelf = self] (timer) in
            weakSelf?.presenter?.onInvokeTimer()
        }
    }
    
    func stopTimer() {
        timer?.invalidate()
    }
    
    func show(rates: [RatesViewModel]) {
        
        let adapter = CurrencyRatesAdapter(source: rates)
        
        adapter.editableRowIndex = editableRowIndex
        
        adapter.onChangeAmount = { [weak weakSelf = self] amount in
            weakSelf?.presenter?.onChange(amount: amount)
        }
        
        adapter.onSelectCurrency = { [weak weakSelf = self] currency in
            weakSelf?.presenter?.onSelect(currency: currency)
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
            weakSelf?.presenter?.onFullReloadTableFinish()
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
    
    func showUnknownError() {        
        showError(reason: Localization.unknownMessage)
    }
}


// MARK: - Localization

extension CurrencyRatesVC {

    enum Localization {
        static let unknownMessage = _L("Повторите попытку позже")
        static let ok = _L("OK")
    }
}
