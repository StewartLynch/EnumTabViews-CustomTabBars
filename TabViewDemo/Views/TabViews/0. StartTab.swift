//
//----------------------------------------------
// Original project: TabViewDemo
// by  Stewart Lynch on 2025-01-26
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

struct StartTab: View {
    @State private var router = Router()
    var body: some View {
        TabView(selection: $router.selectedTab) {
            ForEach(TabViewEnum.allCases) { tab in
                let tabItem = tab.tabItem
                Tab(
                    tabItem.name,
                    systemImage: tabItem.systemImage,
                    value: tab) {
                        tab
                    }
            }
        }
        .environment(router)
    }
}

#Preview {
    StartTab()
}

@Observable
class Router {
    var selectedTab: TabViewEnum = .home
}
