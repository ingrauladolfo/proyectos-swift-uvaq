//
//  ContentView.swift
//  HolaMundoSwitftUI
//
//  Created by Ing. Raúl Adolfo Torres Vargas on 01/10/20.
//  Copyright © 2020 Ing. Raúl Adolfo Torres Vargas. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showHelloWorld = false
    var body: some View {
        VStack(spacing: 5){
            if showHelloWorld {
                Text("Hello World")
            }
            Button(action: {
                self.showHelloWorld.toggle()
            }){
                Text("Show Details")
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
