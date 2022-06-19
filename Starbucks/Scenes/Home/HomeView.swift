//
//  HeaderView.swift
//  Starbucks
//
//  Created by 박지용 on 2022/06/17.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel = HomeViewModel()
    
    var body: some View {
        HStack {
            ScrollView(.vertical) {
                HomeHeaderView(isNeedToReload: $viewModel.isNeedToReload)
                MenuSuggestionSectionView(coffeeMenu: $viewModel.coffeeMenu)
                Spacer(minLength: 32.0) // 최소 마진
                EventSectionView(events: $viewModel.events)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
