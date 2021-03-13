//
//  POkemonViewModel.swift
//  PokedexSwiftUI
//
//  Created by Thin Myat Noe on 13/3/21.
//

import SwiftUI

class PokemonViewModel: ObservableObject{
	@Published var pokemon = [Pokemon]()
	
	let baseUrl = "https://pokedex-bb36f.firebaseio.com/pokemon.json"
}
