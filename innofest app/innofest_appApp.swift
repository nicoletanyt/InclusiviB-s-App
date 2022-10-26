//
//  innofest_appApp.swift
//  innofest app
//
//  Created by RYAN TUNG TZE-JIN on 26/10/22.
//

import SwiftUI

@main
struct innofest_appApp: App {
    var body: some Scene {
        WindowGroup {
            Homepage()
                .environment(\.colorScheme, .dark)
        }
    }
}
