//
//  Extensions.swift
//  Netflix Clone
//
//  Created by Paulo Vitor on 27/02/23.
//

import Foundation

extension String {
    func capitalizeFristLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
