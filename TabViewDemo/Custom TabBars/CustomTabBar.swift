//
//----------------------------------------------
// Original project: TabViewDemo
// by  Stewart Lynch on 2025-01-29
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch
//----------------------------------------------
// Copyright © 2025 CreaTECH Solutions. All rights reserved.


import SwiftUI

struct CustomTabBar: View {
    @Binding var selectedTab: TabViewEnum
    var body: some View {
        HStack {
            ForEach(TabViewEnum.allCases) { tabView in
                Button {
                    withAnimation {
                        selectedTab = tabView
                    }
                } label: {
                    Image(systemName: tabView.tabItem.systemImage)
                        .font(.system(size: 18))
                        .bold()
                        .padding()
                        .frame(width: 40)
                        .foregroundStyle(.white)
                        .background(tabView == selectedTab ? .gray : tabView.tabItem.color, in: .circle)
                }
                .disabled(tabView == selectedTab)
            }
        }
    }
}

#Preview {
    @Previewable @State var selectedTab = TabViewEnum.home
    CustomTabBar(selectedTab: $selectedTab)
}
