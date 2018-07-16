//
//  AssignmentProvider.swift
//  FunFacts
//
//  Created by TaiHsinLee on 2018/7/16.
//  Copyright © 2018年 Treehouse Island. All rights reserved.
//

import GameKit


struct AssignmentProvider {
    let assigns = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
        "Contrary to popular belief, Lorem Ipsum is not simply random text.",
        "Richard McClintock, a Latin professor at Hampden-Sydney College in",
        "looked up one of the more obscure Latin words, consectetur",
        "from a Lorem Ipsum passage, and going through the cites of the word",
        "This book is a treatise on the theory of ethics, very popular during the.",
        "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet..",
        "The standard chunk of Lorem Ipsum used since the 1500s is reproduced.",
        "There are many variations of passages of Lorem Ipsum available.",
        "but the majority have suffered alteration in some form"
    ]
    
    func randomAssign() -> String {
        let randomassignNumber = GKRandomSource.sharedRandom().nextInt(upperBound: assigns.count)
        return assigns[randomassignNumber]
    }
}



