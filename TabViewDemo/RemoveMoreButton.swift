import SwiftUI

// KavSoft Solution for removing More Button for Tab Bar SwiftUI
// https://www.youtube.com/watch?v=zSHBePAXJCs

struct RemoveMoreButton: UIViewRepresentable {
    var result: () -> ()
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)
        view.backgroundColor = .clear
        DispatchQueue.main.async {
            if let tabBarController = view.tabBarController {
                tabBarController.moreNavigationController.navigationBar.isHidden = true
                /// Use this only if you want to completely hide the Native Tab Bar
                tabBarController.tabBar.isHidden = true
                result()
            }
        }
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        
    }
}

/// Finding Attached UITabBarController from UIView
extension UIView {
    var tabBarController: UITabBarController? {
        if let controller = sequence(first: self, next: { item in
            item.next
        }).first(where: { $0 is UITabBarController }) as? UITabBarController {
            return controller
        }
        
        return nil
    }
}