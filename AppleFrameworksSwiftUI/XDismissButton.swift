//
//  XDismissButton.swift
//  AppleFrameworksSwiftUI
//
//  Created by Ali Shaker on 22/11/2023.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack {
            Spacer()
            Button {
                isShowingDetailView.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(uiColor: .label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton(isShowingDetailView: .constant(false))
    }
}
