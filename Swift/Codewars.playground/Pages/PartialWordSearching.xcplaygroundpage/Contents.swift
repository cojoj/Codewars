import Foundation

// https://www.codewars.com/kata/54b81566cd7f51408300022d

func wordSearch(_ str:String, _ arr:[String]) -> [String] {
    let filtered = arr.filter { string in
        string.lowercased().contains(str.lowercased())
    }
    
    return filtered.count > 0 ? filtered : ["Empty"]
}

wordSearch("test", ["test", "something", "else", "testttttt"])