//
//  BusinessCell.swift
//  Yelp
//
//  Created by CS Student on 2/16/17.
//  Copyright © 2017 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet var distance: UILabel!
    @IBOutlet var numReviews: UILabel!
    @IBOutlet var type: UILabel!
    @IBOutlet var adress: UILabel!
    @IBOutlet var title: UILabel!
    @IBOutlet var ratingImage: UIImageView!
    @IBOutlet var thumbNail: UIImageView!
    
    var business: Business! {
        didSet{
            title.text = business.name
            thumbNail.setImageWith(business.imageURL!)
            type.text = business.categories
            adress.text = business.address
            numReviews.text = "\(business.reviewCount!) Reviews"
            ratingImage.setImageWith(business.ratingImageURL!)
            distance.text = business.distance
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbNail.layer.cornerRadius = 3
        thumbNail.clipsToBounds = true
        
        title.preferredMaxLayoutWidth = title.frame.size.width
        
        // Initialization code
    }

    override func layoutSubviews() {
         super.layoutSubviews()
        
        title.preferredMaxLayoutWidth = title.frame.size.width
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
