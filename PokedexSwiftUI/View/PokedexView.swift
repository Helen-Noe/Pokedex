//
//  PokedexView.swift
//  PokedexSwiftUI
//
//  Created by Thin Myat Noe on 12/3/21.
//

import SwiftUI

struct PokedexView: View {
	
	private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
	@ObservedObject var viewModel = PokemonViewModel()
	@State var searchTerm = ""
	
    var body: some View {
		NavigationView{
			ScrollView{
				HStack{
					TextField("Search Term Here", text: $searchTerm)
				}
				.padding()
				.background(Color(.systemGray5))
				.cornerRadius(12)
				.padding()

				LazyVGrid(columns: gridItems, spacing: 16){
					ForEach(viewModel.pokemon.filter{ searchTerm.isEmpty ? true : $0.name.contains(searchTerm)
					}){ pokemon in
						PokemonCell(pokemon: pokemon, viewModel: viewModel)
					}
				}
			}
			.navigationTitle("Pokedex")
		}
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
