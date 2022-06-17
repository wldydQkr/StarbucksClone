//
//  StarbucksApp.swift
//  Starbucks
//
//  Created by 박지용 on 2022/06/16.
//

import SwiftUI

@main
struct StarbucksApp: App { // AppDelegate, SceneDelegate 같은 역할
    var body: some Scene {
        WindowGroup { // 가장 기본으로 표시되는 화면
            MainTabView()
                .accentColor(.green)
        }
    }
}
