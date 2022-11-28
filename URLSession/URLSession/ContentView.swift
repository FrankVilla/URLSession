//
//  ContentView.swift
//  URLSession
//
//  Created by KOVIGROUP on 05/11/2022.
//

import SwiftUI

struct ContentView: View {
    private var viewModel: ViewModel = ViewModel()
    
    var body: some View {
        VStack {
           Text("Call petition Http")
                .padding()
            Button("Press Buttons to call peticion HTTP") {
                viewModel.executeAPI()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
