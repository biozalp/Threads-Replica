//
//  ThreadsTextViewModifier.swift
//  ThreadsReplica
//
//  Created by Berk Ilgar Özalp on 15.01.2024.
//

import SwiftUI

struct ThreadsTextViewModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .padding(12)
            .font(.subheadline)
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .autocorrectionDisabled()
            .textInputAutocapitalization(.never)
    }
}
