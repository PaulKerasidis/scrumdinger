//
//  ThemeView.swift
//  Scrumdinger
//
//  Created by Paulos Kerasidis on 7/2/25.
//

import SwiftUI

struct ThemeView: View {
    let theme: Theme
    
    var body: some View {
        Text(theme.name)
            .padding(4)
            .frame(maxWidth: .infinity)
            .background(theme.mainColor)
            .foregroundColor(theme.accentColor)
            .clipShape(RoundedRectangle(cornerRadius: 4))
    }
}

#Preview {
    ThemeView(theme: .buttercup)
}
