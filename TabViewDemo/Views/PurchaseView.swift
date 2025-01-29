//
//----------------------------------------------
// Original project: TabViewDemo
// by  Stewart Lynch on 2025-01-27
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

struct PurchaseView: View {
    @Environment(\.dismiss) var dismiss
    @Environment(Router.self) var router
    @Binding var total: Int
    var body: some View {
        NavigationStack {
            VStack {
                Text("\(total)")
                    .font(.system(size: 200))
                    .contentTransition(.numericText())
                Text("Add to cart!")
                HStack {
                    Button {
                        if total > 0 {
                            withAnimation {
                                total -= 1
                            }
                            
                        }
                    } label: {
                        Image(systemName: "minus.circle.fill")
                    }
                    Button {
                        withAnimation {
                            total += 1
                        }
                    } label: {
                        Image(systemName: "plus.circle.fill")
                    }
                }
                Button("Go Home") {
                    router.selectedTab = .home
                    dismiss()
                }
                .buttonStyle(.bordered)
            }
            .font(.largeTitle)
            .navigationTitle("Purchase Screen")
            .toolbar {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark.circle.fill")
                }
            }
            .onDisappear {
                dismiss()
            }
        }
    }
}

#Preview {
    @Previewable @State var total = 0
        PurchaseView(total: $total)
        .environment(Router())
}
