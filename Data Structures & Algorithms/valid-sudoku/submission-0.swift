class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var rows: [Set<Character>] = Array(repeating: [], count: 9)
        var cols: [Set<Character>] = Array(repeating: [], count: 9)
        var boxes: [Set<Character>] = Array(repeating: [], count: 9)

        for (rowIndex, row) in board.enumerated() {
            for (colIndex, col) in row.enumerated() {
                if col == "." { continue }

                let boxIndex = (rowIndex / 3) * 3 + (colIndex / 3)
                
                if rows[rowIndex].contains(col) 
                    || cols[colIndex].contains(col)
                    || boxes[boxIndex].contains(col) {
                    return false
                }
                
                rows[rowIndex].insert(col)
                cols[colIndex].insert(col)
                boxes[boxIndex].insert(col)
            }
        }

        return true
    }
}
