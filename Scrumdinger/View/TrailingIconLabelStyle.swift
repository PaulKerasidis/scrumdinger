//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Paulos Kerasidis on 1/2/25.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
    
        HStack{
            configuration.title
            configuration.icon
        }
        
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}

