//
//  PokemonDetailViewController.swift
//  PokemonCard
//
//  Created by karlina.engere on 10/02/2021.
//

import UIKit

class PokemonDetailViewController: UICollectionViewController {
    
    var pokemon: Pokemon?
    
    @IBOutlet weak var pokemonImage: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let pokemon = pokemon {
                   ImageController.getImage(for: pokemon.imageUrl ?? "") { (image) in
                       self.pokemonImage.image = image
                   }
               }else{
                   print("pokemon image is nil")
               }
           }
       }
