//
//  ViewController.swift
//  CoinTrackerApp
//
//  Created by macbook pro on 4.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var homeFeedTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        APIManager.shared.getCoins { coins in
            
            switch coins {
            case .failure(let error):
                print(error)
            case .success(let coins):
                coins.data?.coins?.forEach({ coin in
                    print(coin.name)
                })
            }
            
        }
    }
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: <#T##String#>, for: <#T##IndexPath#>)
    }
}
