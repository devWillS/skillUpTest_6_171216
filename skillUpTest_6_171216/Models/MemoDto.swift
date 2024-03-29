//
//  MemoDto.swift
//  skillUpTest1216fin
//
//  Created by S N on 2017/12/27.
//  Copyright © 2017年 Seidi Nakamura. All rights reserved.
//

import Foundation
import RealmSwift

final class MemoDto: Object {
    
    @objc dynamic var memoId = 0
    @objc dynamic var memoText = ""
    @objc dynamic var updateDate = Date()
    
    override static func primaryKey() -> String? {
        return "memoId"
    }
    func getTitle() -> String {
        return memoText.lines[0]
    }
    func getText() -> String? {
        if memoText.lines.count > 1{
            
            return memoText.lines[1]
        }
        return nil
    }
}
