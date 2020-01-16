//
//  ItemListDataProvider.swift
//  ToDo
//
//  Created by Rajat Bhatt on 14/01/20.
//  Copyright © 2020 Rajat. All rights reserved.
//

import UIKit

enum Section: Int {
  case toDo
  case done
}

class ItemListDataProvider: NSObject, UITableViewDataSource, UITableViewDelegate {
    var itemManager: ItemManager?
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case Section.toDo.rawValue:
            return itemManager?.toDoCount ?? 0
        case Section.done.rawValue:
            return itemManager?.doneCount ?? 0
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
