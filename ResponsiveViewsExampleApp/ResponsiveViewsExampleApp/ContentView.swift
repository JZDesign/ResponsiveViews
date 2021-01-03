//
//  ContentView.swift
//  ResponsiveViewsExampleApp
//
//  Created by Jacob Rakidzich on 1/2/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image(systemName: "creditcard.fill")
                .foregroundColor(.red)
                .padding(.trailing)
            
            Text("Joe's Coffee Shop")
            Spacer()
            Text("$2.34")
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ResponsiveContentView: View {
    var body: some View {
        RStack {
            Image(systemName: "creditcard.fill")
                .foregroundColor(.red)
            RDualText(
                firstText: Text("Joe's Coffee Shop"),
                secondText: Text("$2.34")
            )
        }.padding()
    }
}
