//
//  File.swift
//  PokedexSwiftUI
//
//  Created by Thin Myat Noe on 12/3/21.
//

import Foundation

struct Pokemon: Decodable, Identifiable {
	let id: Int
	let name: String
	let imageUrl: String
	let type: String
}

let mockPokemon: [Pokemon] = [
	.init(id: 0, name: "Bulbasaur", imageUrl: "Bulbasaur", type: "poision"),
	.init(id: 1, name: "Ivysaur", imageUrl: "Bulbasaur", type: "poision"),
	.init(id: 2, name: "Venusaur", imageUrl: "Bulbasaur", type: "poision"),
	.init(id: 3, name: "Charmander", imageUrl: "Bulbasaur", type: "fire"),
	.init(id: 4, name: "Charmeleon", imageUrl: "Bulbasaur", type: "fire"),
	.init(id: 5, name: "Charizard", imageUrl: "Bulbasaur", type: "fire")
]
