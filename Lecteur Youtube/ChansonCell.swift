//
//  ChansonCell.swift
//  Lecteur Youtube
//
//  Created by Ecole NaN on 18/10/2018.
//  Copyright © 2018 Ecole NaN. All rights reserved.
//

import UIKit

class ChansonCell: UITableViewCell {

    @IBOutlet weak var artisteEtTitreLabel: UILabel!
    @IBOutlet weak var miniature: UIImageView!
    var chanson: Chanson!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

    func creerCell(_ chanson: Chanson){
        self.chanson = chanson
        telechargerImage()
        
        let attributed = NSMutableAttributedString(string: self.chanson.titre, attributes: [.font:UIFont.boldSystemFont(ofSize: 20), .foregroundColor : UIColor.black])
        let secondeLigne = NSMutableAttributedString(string: "\n" + self.chanson.artiste, attributes: [.font : UIFont.italicSystemFont(ofSize: 20), .foregroundColor: UIColor.brown])
        attributed.append(secondeLigne)
        artisteEtTitreLabel.attributedText = attributed
    }
    
    func telechargerImage(){
        miniature.image = #imageLiteral(resourceName: "073 logo")
        
        if let url = URL(string: self.chanson.miatureUrl){
            let session = URLSession.shared
            let task = session.dataTask(with: url, completionHandler: { (data, response, error) in
                if let imageData = data, let image = UIImage(data: imageData){
                    DispatchQueue.main.async{
                        self.miniature.image = image
                    }
                }
            })
            task.resume()
        }
    }
    
    
    
}
