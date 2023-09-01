//
//  CartView.swift
//  Deli-Newyork
//
//  Created by Md Shohidur Rahman on 9/1/23.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManagerViewModel
    
    var body: some View {
        ScrollView {
            if cartManager.items.count > 0 {
                ForEach(cartManager.items, id: \.id){ item in
                    ItemRowView(item: item)
                    
                }
                
                HStack {
                    Text("Your cart total is")
                    Spacer()
                    Text("$\(String(format: "%.2f",cartManager.total))")
                        .bold()
                }
                .padding()
                
                Button {
                    print("Paid")
                } label: {
                    HStack{
                        Text("Pay now")
                        Image(systemName: "arrow.right")
                        
                            
                    }
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 180, height: 60)
                    .background(Color.green.opacity(0.9))
                    .cornerRadius(20)
                    
                    
                }

                
            } else {
                Text("Your cart is empty")
            }
        }
        .navigationTitle("My cart")
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManagerViewModel())
    }
}
