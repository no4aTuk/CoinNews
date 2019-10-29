//
//  ChartCoordinator.swift
//  CoinNews
//
//  Created by Apple on 14/06/2019.
//  Copyright © 2019 Vonny. All rights reserved.
//

import Foundation

final class ChartCoordinator: BaseCoordinator {
    func getInstance() -> ChartViewController {
        let ctrl = ChartViewController(viewModel: ChartViewModel())
        ctrl.title = AppText.chart_tab
        return ctrl
    }
}
