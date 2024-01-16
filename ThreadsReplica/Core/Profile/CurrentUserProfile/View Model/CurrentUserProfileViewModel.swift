//
//  ProfileViewModel.swift
//  ThreadsReplica
//
//  Created by Berk Ilgar Özalp on 16.01.2024.
//

import Foundation
import Combine
import PhotosUI
import SwiftUI

class CurrentUserProfileViewModel: ObservableObject{
    @Published var currentUser: User?
    @Published var selectedItem: PhotosPickerItem?{
        didSet { Task {await loadImage() }}
    }
    @Published var profileImage: Image?
    
    private var cancelables = Set<AnyCancellable>()
    
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers(){
        UserService.shared.$currentUser.sink { [weak self] user in
            self?.currentUser = user
//            print("Debug: User in view model from combine is \(user)")
        }.store( in: &cancelables )
    }
    
    private func loadImage() async {
        guard let item = selectedItem else {return}
        guard let data = try? await item.loadTransferable(type: Data.self) else {return}
        guard let uiImage = UIImage(data: data) else {return}
        self.profileImage = Image(uiImage: uiImage)
    }
}
