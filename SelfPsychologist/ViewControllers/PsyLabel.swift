//
//  PsyLabel.swift
//  SelfPsychologist
//
//  Created by Дмитрий Дуров on 22.10.2022.
//

import UIKit

final class PsyLabel: UILabel{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setLabel()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setLabel()
    }
    
    func setLabel() {
        font = UIFont.systemFont(ofSize: 25)
        textColor = .white
        numberOfLines = 0
        textAlignment = .left
    }
}
