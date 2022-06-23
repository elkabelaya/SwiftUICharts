//
//  ChartView.swift
//  chart
//
//  Created by Elka Belaya on 22.06.2022.
//

import SwiftUI
import Charts

struct ChartView: View {
    let viewModel: ChartViewModel = .init()
    var body: some View {
        ScrollView {
            VStack (alignment: .leading, spacing: 20){
                BarChartsView(chartItems: viewModel.chartItems)
                AreaChartsView(chartItems: viewModel.chartItems)
                LineChartsView(dateItems: viewModel.dateItems)
            }
            .padding()
        }
    }
}


struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
