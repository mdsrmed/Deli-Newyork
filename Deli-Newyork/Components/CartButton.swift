//
//  CartButton.swift
//  Deli-Newyork
//
//  Created by Md Shohidur Rahman on 9/1/23.
//

import SwiftUI

struct CartButton: View {
    let numberOfItems: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "cart")
                .padding(.top, 5)
                .imageScale(.large)
            
            if numberOfItems > 0 {
                Text("\(numberOfItems)")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(Color.blue)
                    .cornerRadius(50)
                           
            }
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberOfItems: 1)
    }
}
