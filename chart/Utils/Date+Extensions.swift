//
//  Date+Extensions.swift
//  chart
//
//  Created by Elka Belaya on 22.06.2022.
//

import Foundation
extension Date {
    func getDayOffset(_ num: Int) -> Date {
        var dayComponent = DateComponents()
        dayComponent.day = num
        return  Calendar.current.date(byAdding: dayComponent, to: self)!
    }

    var onlyDate: Date {
        get {
            let calender = Calendar.current
            var dateComponents = calender.dateComponents([.year, .month, .day], from: self)
            dateComponents.timeZone = NSTimeZone.system
            return calender.date(from: dateComponents)!
        }
    }
}
