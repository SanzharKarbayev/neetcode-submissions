class Solution {

    func encode(_ strs: [String]) -> String {
        var output = ""
        for str in strs {
            output += "\(str.count)#\(str)"
        }
        return output
    }

    func decode(_ str: String) -> [String] {
        var i = str.startIndex
        var output: [String] = []
        while i < str.endIndex {
            var j = i
            var number = ""
            while str[j] != "#" {
                number.append(str[j])
                j = str.index(after: j)
            }

            let range = Int(number)!
            i = str.index(after: j)
            let end = str.index(i, offsetBy: range)
            let word = str[i..<end]
            output.append(String(word))
            
            i = end
        }
        
        return output
    }
}