//
//  StoreView.swift
//  Deli-Newyork
//
//  Created by Md Shohidur Rahman on 8/31/23.
//

import SwiftUI

struct StoreView: View {
    
    @StateObject  var cartManager = CartManagerViewModel()
    let columns = [GridItem(.adaptive(minimum: 170), spacing: 1)]
    
    var body: some View {
        NavigationStack {

                ScrollView {
                   
                        LazyVGrid(columns: columns,spacing: 20) {
                            ForEach(itemList,id: \.id){ item in
                                
                                StoreItemView(item: item)
                                    .environmentObject(cartManager)
                            }
                        }
                        .navigationTitle("Deli Newyork")
                        .toolbar {
                            NavigationLink {
                                CartView()
                                    .environmentObject(cartManager)
                            } label: {
                                CartButton(numberOfItems: cartManager.items.count)
                            }

                    }
                    
            }
            
        }
        
    }
}

struct StoreView_Previews: PreviewProvider {
    static var previews: some View {
        StoreView()
            .environmentObject(CartManagerViewModel())
    }
}
