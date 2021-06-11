//
//  Task.swift
//  ToDo_Firebase
//
//  Created by Sergey on 6/9/21.
//

import Foundation
import Firebase

struct Task {
    let title: String
    // userId - тот человек, которому присвоена задача
    let userId: String
    // ref - все обьекты имею конкретное место в базе данных и ref нужен чтобы добраться до обьекта в базе данных
    let ref: DatabaseReference?
    var completed: Bool = false
    
    init(title: String, userId: String) {
        self.title = title
        self.userId = userId
        self.ref = nil
    }
    
    // snapshot - когда храним каrие то данные в базе данных и хотим получить текущее значение наших данных то получаем snapshot (снимок, срез данных). Как бы получаем снимок данных на этот момент. Snapshot это и есть JSON
    init(snapshot: DataSnapshot) {
        let snapshotValue = snapshot.value as! [String: AnyObject]
        title = snapshotValue["title"] as! String
        userId = snapshotValue["userId"] as! String
        completed = snapshotValue["completed"] as! Bool
        ref = snapshot.ref
     }
    
    func convertToDictionary() -> Any {
        return ["title": title, "userId": userId, "comleted": completed]
    }
}
