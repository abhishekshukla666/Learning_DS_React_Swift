
/*
 Single Responsibility Principle- A class should have one and only one responsibility, means
 a class should have only one job.
 */

import Foundation
/*
 What class should not do?
 */
class Handler {
    
    func handle() {
        let data = requestDataToAPI()
        let array = parse(data: data)
        saveToDB(array: array)
    }
    
    private func requestDataToAPI() -> Data {
        // send API request and wait the response
        return Data()
    }
    
    private func parse(data: Data) -> [String] {
        // parse the data and create the array
        return []
    }
    
    private func saveToDB(array: [String]) {
        // save the array in a database (CoreData/Realm/...)
    }
}

/*
 What class should do.
 */

class Handlerr {
    
    let apiHandler: APIHandler
    let parseHandler: ParseHandler
    let dbHandler: DBHandler
    
    init(apiHandler: APIHandler, parseHandler: ParseHandler, dbHandler: DBHandler) {
        self.apiHandler = apiHandler
        self.parseHandler = parseHandler
        self.dbHandler = dbHandler
    }
    
    func handle() {
        let data = apiHandler.requestDataToAPI()
        let array = parseHandler.parse(data: data)
        dbHandler.saveToDB(array: array)
    }
}

class APIHandler {
    
    func requestDataToAPI() -> Data {
        // send API request and wait the response
        return Data()
    }
}

class ParseHandler {
    
    func parse(data: Data) -> [String] {
        // parse the data and create the array
        return []
    }
}

class DBHandler {
    
    func saveToDB(array: [String]) {
        // save the array in a database (CoreData/Realm/...)
    }
}
