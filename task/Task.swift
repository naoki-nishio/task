//
//  Task.swift
//  task
//
//  Created by 中西八洋 on 2021/08/23.
//

import RealmSwift

class Task: Object {
    // 管理用 ID。プライマリーキー
    @objc dynamic var id = 0

    // タイトル
    @objc dynamic var title = ""

    // 内容
    @objc dynamic var contents = ""

    // 日時
    @objc dynamic var date = Date()

    
    @objc dynamic var category = ""
    // id をプライマリーキーとして設定
    override static func primaryKey() -> String? {
        return "id"
    }
}
