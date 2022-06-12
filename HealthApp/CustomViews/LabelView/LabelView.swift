//
//  LabelView.swift
//  HealthApp
//
//  Created by Sraavan Chevireddy on 6/11/22.
//

import UIKit

class LabelView: UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var title: UILabel!
    
    let xibName = "LabelView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed(xibName, owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
}
