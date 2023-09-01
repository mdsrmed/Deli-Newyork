//
//  ContentView.swift
//  Deli-Newyork
//
//  Created by Md Shohidur Rahman on 8/31/23.
//

import SwiftUI



struct ContentView: View {
    
    @State private var goStore = false
    
    var body: some View {
            
        NavigationStack {
            VStack(spacing: 50) {
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 300)
                        
                        Text("Grocery store at your doorstep")
                            .font(.custom("Lato-Light", size: 40))
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                        
                        Text("Experience fresh delights daily")
                            .font(.custom("Lato-Light",size: 20))
                            .foregroundColor(.gray)
     
                        
                        Spacer()
                        
                        Button {
                            goStore = true
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 50)
                                Text("Get started")
                                    .foregroundColor(.white)
                                    .bold()
                            }
                        }
                        .frame(width: 300, height: 70)
                        .foregroundColor(Color.red.opacity(0.6))
                        .navigationDestination(isPresented: $goStore) {
                            StoreView()
                    }
                    
            }
        }
            
 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
