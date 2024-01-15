//
//  ProfileView.swift
//  ThreadsReplica
//
//  Created by Berk Ilgar Özalp on 15.01.2024.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: ProfileThreadFilter = .threads
    @Namespace var animation
    
    private var filterBarWidth: CGFloat{
        let count = CGFloat(ProfileThreadFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 20
    }
    
    var body: some View {
        ScrollView (showsIndicators: false) {
            //bio and stats
            VStack (spacing:20){
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 12) {
                        VStack(alignment: .leading, spacing: 4){
                            //fullname and username
                            Text("Berk Ilgar Ozalp")
                                .font(.title2)
                                .fontWeight(.semibold)
                            Text("biozalp")
                                .font(.subheadline)
                                .font(.caption2)
                            
                        }
                        Text("I am awesome")
                            .font(.footnote)
                        Text("2000 Followes")
                            .font(.caption)
                            .font(.caption2)
                    }
                    Spacer()
                    CircleProfileImageView()
                }.padding()
                
                Button {
                    
                }label:{
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.white)
                        .frame(width:352, height: 32)
                        .background(.black)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                
                //user content list view
                VStack{
                    HStack{
                        ForEach(ProfileThreadFilter.allCases) {filter in
                            VStack {
                                Text(filter.title)
                                    .font(.subheadline)
                                    .fontWeight(selectedFilter == filter ? .semibold : .regular)
                                if selectedFilter == filter {
                                    Rectangle()
                                        .foregroundStyle(Color.black)
                                        .frame(width: filterBarWidth, height:1)
                                        .matchedGeometryEffect(id: "item", in: animation)
                                } else {
                                    Rectangle()
                                        .foregroundStyle(Color.clear)
                                        .frame(width: filterBarWidth, height:1)
                                }
                            }
                            .onTapGesture {
                                withAnimation(.spring()){
                                    selectedFilter = filter
                                }
                            }
                        }
                    }
                    LazyVStack{
                        ForEach(0 ... 10, id: \.self){ thread in
                            ThreadCell()
                            
                        }
                    }
                }.padding(.vertical, 8)
            }
            
        }
    }
}

#Preview {
    ProfileView()
}
