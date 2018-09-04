//
//  BasicMessageViewModel.swift
//  RocketChatViewController Example
//
//  Created by Filipe Alvarenga on 05/08/18.
//  Copyright © 2018 Rocket.Chat. All rights reserved.
//

import Foundation
import DifferenceKit

struct BasicMessageViewModel: ChatCellViewModel, Differentiable {
    var relatedReuseIdentifier: String {
        return BasicMessageCollectionViewCell.identifier
    }

    var username: String
    var text: String

    func heightForCurrentState() -> CGFloat? {
        return 60
    }

    // MARK: Differentiable

    var differenceIdentifier: String {
        return username + text
    }

    func isContentEqual(to source: BasicMessageViewModel) -> Bool {
        return text != source.text
    }
}
