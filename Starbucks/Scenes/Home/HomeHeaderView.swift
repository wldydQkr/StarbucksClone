//
//  HomeHeaderView.swift
//  Starbucks
//
//  Created by 박지용 on 2022/06/17.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        VStack(spacing: 16.0) {
            HStack(alignment: .top) { // 여러 줄을 표시할때는 """ 를 하면 된다.
                Text("""
                오늘보다 더 멋진 내일이
                \(User.shared.username)님을 기다려요☘️
                """)
                .font(.system(size: 25.0, weight: .semibold, design: .default))
                .frame(maxWidth: .infinity, alignment: .leading)
                Button(action: {}, label: { Image(systemName: "arrow.2.circlepath")
                })
            }
            HStack {
                Button(action: {}) {
                    Image(systemName: "mail")
                        .foregroundColor(.secondary)
                    Text("What's New")
                        .foregroundColor(.primary)
                        .font(.system(size: 16.0, weight: .semibold, design: .default))
                }
                Button(action: {}) {
                    Image(systemName: "ticket")
                        .foregroundColor(.secondary)
                    Text("Coupon")
                        .foregroundColor(.primary)
                        .font(.system(size: 16.0, weight: .semibold, design: .default))
                }
                Spacer() // 사이의 간격이 최대한으로 늘어난다.
                Button(action: {}) {
                    Image(systemName: "bell")
                        .foregroundColor(.secondary)
                }
            }
        }
        .padding(16.0)
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView()
    }
}
