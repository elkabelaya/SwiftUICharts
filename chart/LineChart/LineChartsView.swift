//
//  LineChartsView.swift
//  chart
//
//  Created by Elka Belaya on 23.06.2022.
//

import SwiftUI

struct LineChartsView: View {
    let dateItems: [DateItem]
    var body: some View {
        SimpleLineChart(dateItems: dateItems)
            .frame(height: 100)
        Spacer()
        
        SimboledLineChart(dateItems: dateItems)
            .frame(height: 100)
        Spacer()
    }
}

struct LineChartsView_Previews: PreviewProvider {
    static var previews: some View {
        LineChartsView(dateItems: ChartViewModel().dateItems)
    }
}
