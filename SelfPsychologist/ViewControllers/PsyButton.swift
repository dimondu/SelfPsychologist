//
//  MenuButton.swift
//  SelfPsychologist
//
//  Created by Дмитрий Дуров on 21.10.2022.
//

import UIKit


 class PsyButton: UIButton {
     
     override init(frame: CGRect) {
         super.init(frame: frame)
         setupButton()
     }
     
     required init?(coder: NSCoder) {
         super.init(coder: coder)
         setupButton()
     }
     
     func setupButton() {
         setTitleColor(.white, for: .normal)
         backgroundColor = .systemPink
         layer.cornerRadius = 20
     }
}
