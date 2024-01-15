//
//  ThreadsButtonViewModifier.swift
//  ThreadsReplica
//
//  Created by Berk Ilgar Özalp on 15.01.2024.
//

import SwiftUI

struct ThreadsButtonViewModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(Color.white)
            .frame(width: 352, height: 44)
            .background(.black)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
