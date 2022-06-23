//
//  SimpleLineChart.swift
//  chart
//
//  Created by Elka Belaya on 22.06.2022.
//

import SwiftUI
import Charts

struct SimpleLineChart: View {
    let dateItems: [DateItem]
    var body: some View {
        Chart {
            ForEach(dateItems) { item in
                LineMark(
                    x: .value("Date", item.date),
                    y: .value("Total Count", item.count)
                )
                .interpolationMethod(.cardinal)
            }
        }
    }
}

struct SimpleLineChart_Previews: PreviewProvider {
    static var previews: some View {
        SimpleLineChart(dateItems: ChartViewModel().dateItems)
    }
}
