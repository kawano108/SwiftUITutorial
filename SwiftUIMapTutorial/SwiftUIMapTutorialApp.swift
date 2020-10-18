//
//  SwiftUIMapTutorialApp.swift
//  SwiftUIMapTutorial
//
//  Created by TOUYA KAWANO on 2020/10/13.
//

import SwiftUI

@main
struct SwiftUIMapTutorialApp: App {
    var body: some Scene {
        WindowGroup {
            LandmarkList()
        }
    }
}

struct SwiftUIMapTutorialApp_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
