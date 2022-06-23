//
//  SelectableLineChart.swift
//  chart
//
//  Created by Elka Belaya on 23.06.2022.
//

import SwiftUI
import Charts

struct SelectableLineChart: View {
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

struct SelectableLineChart_Previews: PreviewProvider {
    static var previews: some View {
        SelectableLineChart(dateItems: ChartViewModel().dateItems)
    }
}
