
//
//  BSTree.swift
//  SwiftStructures
//
//  Created by Abhishek Shukla on 6/13/18.
//  Copyright © 2018 Home Inc. All rights reserved.
//
import Foundation

public class AVLTree<T: Comparable> {
    var key: Int?
    var left: AVLTree?
    var right: AVLTree?
    
    func addNode(_ key: Int) {
        
        // Check if root node is empty
        guard let _ = self.key else {
            print("Root node is empty")
            self.key = key
            return
        }
        
        // Check if left side of the tree
        if (key < self.key!) {
            print("Left Side of the tree")
            if let _ = self.left {
                print("Insert a node left side")
                self.left?.addNode(key)
            } else {
                print("Create a new node left side")
                let leftChild = AVLTree()
                leftChild.key = key
                self.left = leftChild
            }
        }
        
        // Check if right side of the tree
        if (key > self.key!) {
            print("Right side of the tree")
            if let _ = self.right {
                print("insert a node right side")
                self.right?.addNode(key)
            } else {
                print("Create a new node right side")
                let rightChild = AVLTree()
                rightChild.key = key
                self.right = rightChild
            }
        }
        print("\n\n\n")
    }
    
    
}

let numberList = [8, 2, 10, 9, 11, 1, 7]
let tree = AVLTree<Int>()
for number in numberList {
    tree.addNode(number)
}
