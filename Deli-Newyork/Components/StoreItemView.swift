//
//  StoreItemVIew.swift
//  Deli-Newyork
//
//  Created by Md Shohidur Rahman on 8/31/23.
//

import SwiftUI

struct StoreItemView: View {
    @EnvironmentObject var cartManager: CartManagerViewModel
    let item: Item
    
    
    var body: some View {
        ZStack (alignment: .topTrailing){
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(item.color)
                    .opacity(0.10)
                    .frame(width: 160, height: 230)
                
                
                    VStack{
                        
                        Image("\(item.image)")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100,height: 100)
                            .cornerRadius(10)
                        Text("\(item.name)")
                        Text("$\(String(format: "%.2f",item.price))")
                            .foregroundColor(.white)
                            .padding(2)
                            .padding(.horizontal)
                            .background(Color.blue)
                            .cornerRadius(3)
                        
                        
                    }

            }
            
            Button {
                cartManager.addToCart(item: item)
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .background(.white)
                    .cornerRadius(50)
                    .padding(2)
            }

        }
    }
}

struct StoreItemView_Previews: PreviewProvider {
    static var previews: some View {
        StoreItemView(item: Item(name: "Tomato", image: "tomato", price: 4.00, color: Color.red))
            .environmentObject(CartManagerViewModel())
    }
}
