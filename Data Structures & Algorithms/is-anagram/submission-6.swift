class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }

        var alphabet: [Character: Int] = [:]
        for (first, second) in zip(s, t) {
            alphabet[first, default: 0] += 1
            alphabet[second, default: 0] -= 1
        }

        return alphabet.allSatisfy { _, value in value == 0 }
    }
}