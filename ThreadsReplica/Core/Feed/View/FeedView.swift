//
//  FeedView.swift
//  ThreadsReplica
//
//  Created by Berk Ilgar Özalp on 15.01.2024.
//

import SwiftUI

struct FeedView: View {
    
    @StateObject var viewModel = FeedViewModel()
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators: false){
                LazyVStack{
                    ForEach(viewModel.threads) {thread in
                        ThreadCell(thread: thread)
                    }
                }
                .refreshable {
                    print("DEBUG: Refresh Threads")
                }
            }
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing){
                Button{
                    
                } label: {
                    Image(systemName: "arrow.counterclockwise")
                        .foregroundStyle(Color.black)
                }
            }
            
        }
    }
}

#Preview {
    NavigationStack{
      FeedView()
    }
}
