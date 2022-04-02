//
//  TesteInterfaceApp.swift
//  TesteInterface
//
//  Created by Thiago Leite on 01/04/22.
//

import SwiftUI

@main
struct TesteInterfaceApp: App {
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        
        .onChange(of: scenePhase) { phase in
            switch phase {
            case .active:
                print("App Ativo")
            case .inactive:
                print("App Inativo")
            case .background:
                print("App em Background")
                
            @unknown default:
                print("What!?")
                
            }
        }
    }
}
