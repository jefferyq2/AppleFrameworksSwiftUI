//
//  FrameworkGridViewModel.swift
//  AppleFrameworksSwiftUI
//
//  Created by Ali Shaker on 22/11/2023.
//

import Foundation
import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
    
    var columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
    ]
}
