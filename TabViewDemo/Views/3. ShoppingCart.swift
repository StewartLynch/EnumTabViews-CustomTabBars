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

struct ShoppingCart: View {
    var body: some View {
        NavigationStack{
            Image(systemName: "cart")
                .resizable()
                .scaledToFit()
                .padding(40)
            Text("Shopping Card")
                .font(.largeTitle)
                .bold()
                .navigationTitle("Shopping Cart")
        }
    }
}

#Preview {
    ShoppingCart()
}
