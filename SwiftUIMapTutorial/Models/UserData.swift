//
//  UserData.swift
//  SwiftUIMapTutorial
//
//  Created by TOUYA KAWANO on 2020/10/18.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoriteOnly = false
    @Published var landmarks = landmarkData
}
