//
//  MainTabView.swift
//  Starbucks
//
//  Created by 박지용 on 2022/06/16.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView() // 각각 넣으면 유지보수의 어려움이 있기 때문에 별도의 enum으로 정의를 해둔다.
                .tabItem {
                    Tab.home.imageItem
                    Tab.home.tabTextItem
                }
            OtherView()
                .tabItem {
                    Tab.other.imageItem
                    Tab.other.tabTextItem
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}



