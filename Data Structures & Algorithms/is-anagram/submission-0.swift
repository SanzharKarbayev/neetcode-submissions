class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        return s.sorted() == t.sorted()
    }
}

// class Solution {
//     func isAnagram(_ s: String, _ t: String) -> Bool {
//         return Set(s) == Set(t)
//     }
// }
