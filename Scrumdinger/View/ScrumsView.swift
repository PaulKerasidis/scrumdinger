//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Paulos Kerasidis on 1/2/25.
//

import SwiftUI

struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]
    
    var body: some View {
        
        NavigationStack{
            List($scrums) { $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)){
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar{
                Button(action: {}){
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
        }
    }
}

// MARK: - Preview Wrapper
struct PreviewWrapper: View {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some View {
        ScrumsView(scrums: $scrums)
    }
}

// MARK: - Preview
#Preview {
    PreviewWrapper()
}
