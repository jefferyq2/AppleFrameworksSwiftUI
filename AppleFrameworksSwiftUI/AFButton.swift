//
//  AFButton.swift
//  AppleFrameworksSwiftUI
//
//  Created by Ali Shaker on 20/11/2023.
//

import SwiftUI

struct AFButton: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundColor(Color.white)
            .frame(width: 280, height: 50)
            .background(Color.pink)
            .cornerRadius(10)
            .padding()
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(title: "Learn More")
    }
}
