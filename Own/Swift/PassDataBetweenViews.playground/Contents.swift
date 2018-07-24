//: [Previous](@previous)

import Foundation
import UIKit
/*
 - Using Callback as Completion Handler
 */
class ViewController: UIViewController {
    
    private let dataModel = DataModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataModel.requestData { [weak self] (data: String) in
            self?.useData(data: data)
        }
    }
    private func useData(data: String) {
        print(data)
    }
}

class DataModel{
    func requestData(completion: ((_ data: String) -> Void)) {
        let data = "This is the data"
        completion(data)
    }
}

/*
 - Callbacks as Class Property
 */
class DataModell {
    var onDataUpdatee: ((_ data: String) -> Void)?
    func dataRequestt() {
        // the data was received and parsed to String
        let data = "Data from wherever"
        
        onDataUpdatee?(data)
    }
}

class ViewControllerr: UIViewController {
    private let dataModel = DataModell()
    override func viewDidLoad() {
        super.viewDidLoad()
        dataModel.onDataUpdatee = { [weak self] (data: String) in
            self?.useData(data: data)
        }
        dataModel.dataRequestt()
    }
    private func useData(data: String) {
        print(data)
    }
}
