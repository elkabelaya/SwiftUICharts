//
//  ChartViewModel.swift
//  chart
//
//  Created by Elka Belaya on 23.06.2022.
//
import Foundation

struct ChartItem: Identifiable {
    var date: Date
    var color: String
    var type: String
    var count: Double
    var id = UUID()
}

typealias DateItemsDictionary = [Date: Double]

struct DateItem: Identifiable {
    let date: Date
    let count: Double
    let id = UUID()
}

final class ChartViewModel: ObservableObject {
    let chartItems: [ChartItem]  = [
        .init(date: Date().onlyDate, color: "Green", type: "Cube", count: 2),
        .init(date: Date().getDayOffset(-1).onlyDate,color: "Green", type: "Sphere", count: 0),
        .init(date: Date().getDayOffset(-2).onlyDate,color: "Green", type: "Pyramid", count: 1),
        .init(date: Date().getDayOffset(-3).onlyDate,color: "Purple", type: "Cube", count: 1),
        .init(date: Date().getDayOffset(-4).onlyDate,color: "Purple", type: "Sphere", count: 1),
        .init(date: Date().getDayOffset(-5).onlyDate,color: "Purple", type: "Pyramid", count: 1),
        .init(date: Date().getDayOffset(-6).onlyDate,color: "Pink", type: "Cube", count: 1),
        .init(date: Date().getDayOffset(-7).onlyDate,color: "Pink", type: "Sphere", count: 2),
        .init(date: Date().getDayOffset(-8).onlyDate,color: "Pink", type: "Pyramid", count: 0),
        .init(date: Date().getDayOffset(-1).onlyDate,color: "Yellow", type: "Cube", count: 1),
        .init(date: Date().getDayOffset(-2).onlyDate.onlyDate,color: "Yellow", type: "Sphere", count: 1),
        .init(date: Date().getDayOffset(-3),color: "Yellow", type: "Pyramid", count: 2)
    ]
    let dateItems: [DateItem]
    init() {
        let dateCountDict = chartItems.reduce(into: DateItemsDictionary(), {
            if let oldValue = $0[$1.date] {
                $0[$1.date] = oldValue + $1.count
            } else {
                $0[$1.date] = $1.count
            }
        })
        var tempItemsArray: [DateItem]  = .init()
        for item in  dateCountDict {
            tempItemsArray.append(DateItem(date: item.key, count: item.value))
        }
        
        dateItems = tempItemsArray.sorted(by: {$0.date > $1.date})
    }
}

