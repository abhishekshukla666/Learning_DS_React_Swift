
/*
 - Boundary Traversal Binary Tree
 */

class BSNode<T> {
    var key: T?
    var left: BSNode?
    var right: BSNode?
}

class BinaryTree<T: Comparable> {
    var root = BSNode<T>()

    func append(element key: T) {

        guard root.key != nil else {
            root.key = key
            return
        }

        var current: BSNode<T> = root
        while current.key != nil {

            // check left side
            if key < current.key! {
                if current.left != nil {
                    current = current.left!
                } else {
                    let childNode = BSNode<T>()
                    childNode.key = key
                    current.left = childNode
                    break
                }
            }

            // check right side
            if key > current.key! {
                if current.right != nil {
                    current = current.right!
                } else {
                    let childNode = BSNode<T>()
                    childNode.key = key
                    current.right = childNode
                    break
                }
            }
        }
    }
    
    /*
    - New Functions by own
    */
    
    func printLeftBoundaryTree(node: BSNode<T>?) {
        guard node?.key != nil else { return }
        if node?.left != nil {
            print(node?.key ?? -1)
            printLeftBoundaryTree(node: node?.left)
        } else if node?.right != nil {
            print(node?.key ?? -1)
            printLeftBoundaryTree(node: node?.right)
        }
    }
    
    func printRightBoundaryTree(node: BSNode<T>?) {
        guard node?.key != nil else { return }
        if node?.right != nil {
            print(node?.key ?? -1)
            printLeftBoundaryTree(node: node?.right)
        } else if node?.left != nil {
            print(node?.key ?? -1)
            printLeftBoundaryTree(node: node?.left)
        }
    }
    
    func printLeafNodesTree(node: BSNode<T>?) {
        guard node?.key != nil else { return }
        printLeafNodesTree(node: node?.left)
        if node?.left == nil, node?.right == nil {
            print(node?.key ?? -1)
        }
        printLeafNodesTree(node: node?.right)
    }
    
    func printAntiClockBoundaryTree(node: BSNode<T>?) {
        guard node?.key != nil else { return }
        // print left boundary of the binary tree
        printLeftBoundaryTree(node: node)
        printLeafNodesTree(node: node)
        printRightBoundaryTree(node: node?.right)
    }
    
    func heightOfTree(node: BSNode<T>?) -> Int {
        var height = 0
        guard node?.key != nil else { return 0 }
        let left = heightOfTree(node: node?.left)
        let right = heightOfTree(node: node?.right)
        if left > right {
            height = 1 + left
        } else {
            height = 1 + right
        }
        return height
    }
    
    func diameterOfTree(node: BSNode<T>?) -> Int {
        var diameter = 0
        guard node?.key != nil else { return diameter }
        let leftHeight = heightOfTree(node: node?.left)
        let rightHeight = heightOfTree(node: node?.right)
        let lDiameter = diameterOfTree(node: node?.left)
        let rDiameter = diameterOfTree(node: node?.right)
        let firstDiameter = leftHeight + rightHeight + 1
        let secondDiameter = max(lDiameter, rDiameter)
        diameter = max(firstDiameter, secondDiameter)
        return diameter
    }
}


let numbers = [20, 8, 22, 4, 3, 12 , 25, 10, 14]
let numberTree = BinaryTree<Int>()
for n in numbers {
    numberTree.append(element: n)
}
// Height of Tree
//numberTree.heightOfTree(node: numberTree.root)

// Diameter of Tree
numberTree.diameterOfTree(node: numberTree.root)

// Boundary of the tree
//numberTree.printAntiClockBoundaryTree(node: numberTree.root)

