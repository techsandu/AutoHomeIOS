import UIKit
import Foundation


let testClosure:(String,String)->String = { d1,d2 in
   return d1+d2
}

print(testClosure("a","c"))
