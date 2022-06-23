//
//  SimpleAreaChart.swift
//  chart
//
//  Created by Elka Belaya on 22.06.2022.
//

import SwiftUI
import Charts

struct SimpleAreaChart: View {
    let chartItems: [ChartItem]
    var body: some View {
        Chart {
            ForEach(chartItems) { item in
                AreaMark(
                    x: .value("Shape Type", item.type),
                    y: .value("Total Count", item.count)
                )
                .foregroundStyle(by: .value("Shape Color", item.color))
            }
        }
    }
}

struct SimpleAreaChart_Previews: PreviewProvider {
    static var previews: some View {
        SimpleAreaChart(chartItems: ChartViewModel().chartItems)
    }
}
