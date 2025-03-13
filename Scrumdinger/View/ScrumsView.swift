//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Paulos Kerasidis on 1/2/25.
//

import SwiftUI

struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]
    @State private var isPresentingNewScrumView: Bool = false
    
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
                Button(action: {
                    isPresentingNewScrumView = true
                }){
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
        }
        .sheet(isPresented: $isPresentingNewScrumView){
            NewScrumSheet(scrums: $scrums, isPresentingNewScrumView: $isPresentingNewScrumView)
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
