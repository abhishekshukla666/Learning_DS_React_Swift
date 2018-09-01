
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

    // A simple function to print leaf nodes of a binary tree
    func printLeaves(element node: BSNode<T>?) {
        guard let node = node else {
            return
        }
        printLeaves(element: node.left)
        
        // Print it if it is a leaf node
        if (node.left == nil && node.right == nil) {
            print(node.key ?? 0)
        }
        printLeaves(element: node.right)
    }
    
    // A function to print all left boundry nodes, except a leaf node.
    // Print the nodes in TOP DOWN manner
    func printBoundaryLeft(element node: BSNode<T>?){
        guard let node = node else {
            return
        }
        
        // to ensure top down order, print the node
        // before calling itself for left subtree
//        print(node.right?.key)
        if node.left != nil {
            print(node.key ?? 0);
            printBoundaryLeft(element: node.left);
        } else if (node.right != nil) {
            print(node.key ?? 0)
            printBoundaryLeft(element: node.right)
        }
        
        // do nothing if it is a leaf node, this way we avoid
        // duplicates in output
    }
    
    // A function to print all right boundry nodes, except a leaf node
    // Print the nodes in BOTTOM UP manner
    func printBoundaryRight(element node: BSNode<T>?) {
        guard let node = node else {
            return
        }
        if (node.right != nil) {
            // to ensure bottom up order, first call for right
            //  subtree, then print this node
            printBoundaryRight(element: node.right)
            print(node.key ?? 0)
        } else if (node.left != nil) {
            printBoundaryRight(element: node.left)
            print(node.key ?? 0)
        }
        // do nothing if it is a leaf node, this way we avoid
        // duplicates in output
    }
    
    // A function to do boundary traversal of a given binary tree
    func printBoundary(element node: BSNode<T>?) {
        guard let node = node else {
            return
        }
        print(node.key ?? 0)
        
        // Print the left boundary in top-down manner.
        printBoundaryLeft(element: node.left)
        
        // Print all leaf nodes
        printLeaves(element: node.left)
        printLeaves(element: node.right)
        
        // Print the right boundary in bottom-up manner
        printBoundaryRight(element: node.right)
    }
}


let numbers = [20, 8, 22, 4, 3, 12 , 25, 10, 14]
let numberTree = BinaryTree<Int>()
for n in numbers {
    numberTree.append(element: n)
}

numberTree.printBoundary(element: numberTree.root)

