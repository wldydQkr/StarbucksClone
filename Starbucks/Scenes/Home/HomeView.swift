//
//  HeaderView.swift
//  Starbucks
//
//  Created by 박지용 on 2022/06/17.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        HStack {
            ScrollView(.vertical) {
                HomeHeaderView()
                MenuSuggestionSectionView()
                Spacer(minLength: 32.0) // 최소 마진
                EventSectionView()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
