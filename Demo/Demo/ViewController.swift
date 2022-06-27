//
//  ViewController.swift
//  Demo
//
//  Created by Andreas Verhoeven on 16/05/2021.
//

import UIKit


struct MyStruct {
	struct MySubStruct {
		var emptyList = [Int]()
		var nonEmptyList = [0]
		var nilList: [Int]?
		
		var string = "String"
		var emptyString = ""
		var nilString: String?
	}
	
	var sub = MySubStruct()
	var nilSub: MySubStruct?
}


class ViewController: UITableViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		let item = MyStruct()
		let nilItem: MyStruct? = nil
		
		if item.sub.emptyList.isEmptyOrNil == true { assert(true) } else { assert(false) }
		if item.sub.nonEmptyList.isEmptyOrNil == true { assert(false) } else { assert(true) }
		if item.sub.nilList.isEmptyOrNil == true { assert(true) } else { assert(false) }
		if item.sub.string.isEmptyOrNil == true { assert(false) } else { assert(true) }
		if item.sub.emptyString.isEmptyOrNil == true { assert(true) } else { assert(false) }
		if item.sub.nilString.isEmptyOrNil == true { assert(true) } else { assert(false) }
		
		if item.nilSub?.emptyList.isEmptyOrNil == true { assert(true) } else { assert(false) }
		if item.nilSub?.nonEmptyList.isEmptyOrNil == true { assert(true) } else { assert(false) }
		if item.nilSub?.nilList.isEmptyOrNil == true { assert(true) } else { assert(false) }
		if item.nilSub?.string.isEmptyOrNil == true { assert(true) } else { assert(false) }
		if item.nilSub?.emptyString.isEmptyOrNil == true { assert(true) } else { assert(false) }
		if item.nilSub?.nilString.isEmptyOrNil == true { assert(true) } else { assert(false) }
		
		if nilItem?.sub.emptyList.isEmptyOrNil == true { assert(true) } else { assert(false) }
		if nilItem?.sub.nonEmptyList.isEmptyOrNil == true { assert(true) } else { assert(false) }
		if nilItem?.sub.nilList.isEmptyOrNil == true { assert(true) } else { assert(false) }
		if nilItem?.sub.string.isEmptyOrNil == true { assert(true) } else { assert(false) }
		if nilItem?.sub.emptyString.isEmptyOrNil == true { assert(true) } else { assert(false) }
		if nilItem?.sub.nilString.isEmptyOrNil == true { assert(true) } else { assert(false) }
		
		if nilItem?.nilSub?.emptyList.isEmptyOrNil == true { assert(true) } else { assert(false) }
		if nilItem?.nilSub?.nonEmptyList.isEmptyOrNil == true { assert(true) } else { assert(false) }
		if nilItem?.nilSub?.nilList.isEmptyOrNil == true { assert(true) } else { assert(false) }
		if nilItem?.nilSub?.string.isEmptyOrNil == true { assert(true) } else { assert(false) }
		if nilItem?.nilSub?.emptyString.isEmptyOrNil == true { assert(true) } else { assert(false) }
		if nilItem?.nilSub?.nilString.isEmptyOrNil == true { assert(true) } else { assert(false) }
		
	}

	override func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}

	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 0
	}
}

