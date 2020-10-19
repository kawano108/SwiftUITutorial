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
            CategoryHome().environmentObject(UserData())
        }
    }
}

struct SwiftUIMapTutorialApp_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome().environmentObject(UserData())
    }
}
