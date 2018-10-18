//
//  TableauController.swift
//  Lecteur Youtube
//
//  Created by Ecole NaN on 18/10/2018.
//  Copyright © 2018 Ecole NaN. All rights reserved.
//

import UIKit

class TableauController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var chansons = [Chanson]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

       tableView.delegate = self
        tableView.dataSource = self
        ajouterChanson()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func ajouterChanson(){
        chansons = [chansons]()
        let diarabi = Chanson(artiste: "Kaaris", titre: "Diarabi", code: "qmUs-uiaRvw")
        chansons.append(diarabi)
        
        let corazon = Chanson(artiste: "Maitre Gims", titre: "Corazon", code: "VjMZJZdNnBE")
        chansons.append(corazon)
        
        let SuraYako = Chanson(artiste: "Sauti Sol", titre: "Sura Yako", code: "lEJw64Zl28U")
        chansons.append(SuraYako)
        
        let iyanya = Chanson(artiste: "Iyanya", titre: "Kwa Ukwu", code: String"Giz00iJwsQA")
        chansons.append(iyanya)
        
        let ada = Chanson(artiste: "Ada", titre: "I overcame", code: "e-CWacgnOEM")
        chansons.append(ada)
        
        let  tango = Chanson(artiste: "Moise Mbiye", titre: "Tango Naye", code: "cTJYVsBcPXo")
        chansons.append(tango)
        
        let X-Maleya = Chanson(artiste: "X Maleya", titre: "Mon Ex", code: "hQvHYH_tXl8")
        chansons.append(X-Maleya)
        
        let Ponce = Chanson(artiste: "Lady Ponce", titre: "Secouer-secouer", code: "WDddz-3jIFY")
        chansons.append(Ponce)
        
        let reniss = Chanson(artiste: "Reniss", titre: "La sauce", code: "fDSapcbf3_I")
        chansons.append(reniss)
        
        let leo = Chanson(artiste: "Mr. Leo", titre: "Kemayo", code: "MZAnmXHkzoA")
        chansons.append(leo)
        
        
        tableView.reloadData() // permet de recharger les données et de mettre a jour notre tableView
    }
}
