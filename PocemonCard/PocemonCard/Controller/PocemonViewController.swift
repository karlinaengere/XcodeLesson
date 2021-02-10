//
//  ViewController.swift
//  PocemonCard
//
//  Created by karlina.engere on 09/02/2021.
//

import UIKit

class PocemonViewController: UIViewController {
    var pocy: [Pocemon] = ()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.title = "Pocemon List"
    }
    func getPocemonData(){
        let url = URL(string: "https://api.pokemontcg.io/v1/cards")!
        NetworkController.performRequest(for: url, httpMethod: .get) {(data, error.indexPathlet error = err{
            print("getting err from url" \(url.absoluteString) , error: \(error.localizedDescription)")
            
            
        }
        
        if let data = data {
            do{ }
            
            let card = try JSONDecoder().decode(Card.self, from: data)
            self.pokey = card.cards
        }catch{
            print("failed to decode pokemin data \(error) , data \(data)")
        }
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }else{
            print("data is nil")
        }
        
        // Do any additional setup after loading the view.
    }


}

extension PocemonViewController: UITableViewDataSource
func tableView( tableBiew: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
}

func tableView( tableView: UITableView, cell ForRowAt)
{
    
}
