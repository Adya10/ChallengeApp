//
//  ContentView.swift
//  Challenge
//
//  Created by Advait Lanjekar on 17/10/23.
//

import SwiftUI

struct ContentView: View {
    
    //5 random words
    var words = ["Emu","Adi","Megamind","Apple","Banana"]
    
    //will store the randomly generated item
    @State var random = [String]()
    
    var body: some View {
        VStack {
            List(random, id: \.self){ random in
                Text(random)
            
            }
            Button("Button") {
                var number = Int.random(in: 0...4)
                random.append(words[number])
            }
        }
    }
}

#Preview {
    ContentView()
}
