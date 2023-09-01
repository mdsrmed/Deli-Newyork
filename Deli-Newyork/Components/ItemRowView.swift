//
//  ItemRowVIew.swift
//  Deli-Newyork
//
//  Created by Md Shohidur Rahman on 9/1/23.
//

import SwiftUI

struct ItemRowView: View {
    @EnvironmentObject var cartManage: CartManagerViewModel
    let item: Item
    var body: some View {
        HStack(spacing: 20){
            Image(item.image)
                .resizable()
                .scaledToFit()
                .frame(width: 60)
                .cornerRadius(10)
            
            VStack(alignment: .leading,spacing: 8) {
                Text(item.name)
                    .bold()
                Text("$\(String(format: "%.2f",item.price))")
            }
            
            Spacer()
            
            Image(systemName: "trash")
                .imageScale(.large)
                .foregroundColor(Color.red)
                .onTapGesture {
                    cartManage.removeFromCart(item: item)
                }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity,alignment: .leading)
    }
}

struct ItemRowView_Previews: PreviewProvider {
    static var previews: some View {
        ItemRowView(item: Item(name: "Tomato", image: "tomato", price: 4.00, color: Color.red))
            .environmentObject(CartManagerViewModel())
    }
}
