class Solution {

    func encode(_ strs: [String]) -> String {
        var output = ""
        for str in strs {
            output += "\(str.count)#\(str))"
        }
        return output
    }

    func decode(_ str: String) -> [String] {
        var output: [String] = []
        let charArray = Array(str)
        var pointer = 0
        while pointer < charArray.count {
            var char = charArray[pointer]
            var lengthString = ""
            while char != "#" && char.isNumber {
                lengthString.append(char)
                pointer += 1
                char = charArray[pointer]
            }

            let lenght = Int(lengthString) ?? 0
            let wordStartIndex = pointer + 1
            let wordEndIndex = wordStartIndex + lenght
            var word = String(charArray[wordStartIndex..<wordEndIndex])
            output.append(word)
            pointer = wordEndIndex + 1
        }
        return output
    }
}
