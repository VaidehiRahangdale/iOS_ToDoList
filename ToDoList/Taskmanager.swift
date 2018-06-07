import UIKit

var taskMgr: Taskmanager = Taskmanager()

struct task{
    var name = "Un-Named"
    var desc = "Un-Described"
}

class Taskmanager: NSObject {
    
    var tasks = [task]()
    
    func addTask(name: String, desc: String){
        tasks.append(task(name: name, desc: desc))
    
    }
    
    

}
