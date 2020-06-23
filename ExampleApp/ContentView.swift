//
//  ContentView.swift
//  ExampleApp
//
//  Created by Ralf Ebert on 23.06.20.
//

import SwiftUI

class CounterModel : ObservableObject{
    @Published var value : Int = 0
    
    func increment() {
        self.value += 1
    }
    
}

struct ContentView: View {
    
    @ObservedObject var counter = CounterModel()
    
    var body: some View {
        VStack {
            Text("Value \(counter.value)")
                .padding()
            Button("Increment") {
                counter.increment()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
