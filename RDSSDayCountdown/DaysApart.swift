//
//  DaysApart.swift
//  RDSSDayCountdown
//
//  Created by Finn on 2018/5/21.
//  Copyright © 2018年 Marcus Wu. All rights reserved.
//

import Foundation

class DaysApart {
    private var apartDateComponents: DateComponents
    lazy var day = String(self.apartDateComponents.day!)
    lazy var hour = String(self.apartDateComponents.hour!)
    lazy var minute = String(self.apartDateComponents.minute!)
    lazy var second = String(self.apartDateComponents.second!)

    required init(fromDate: Date, toDate: Date) {
        let unit:Set<Calendar.Component> = [.day, .hour, .minute, .second]
        self.apartDateComponents = Calendar.current.dateComponents(unit, from: fromDate, to: toDate)
    }
    
    
}
