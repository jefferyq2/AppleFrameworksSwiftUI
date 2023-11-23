//
//  FrameworkDetailView.swift
//  AppleFrameworksSwiftUI
//
//  Created by Ali Shaker on 20/11/2023.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    let framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .padding()
                .font(.body)
            
            Spacer()
            
            Button {
                isShowingSafariView.toggle()
            } label: {
                AFButton(title: "Learn More")
                    
            }
            .fullScreenCover(isPresented: $isShowingSafariView) {
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
            }
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.frameworks[0], isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}
