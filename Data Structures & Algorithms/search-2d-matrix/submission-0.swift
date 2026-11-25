class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        var topRowIndex = 0
        var bottomRowIndex = matrix.count - 1
        while topRowIndex <= bottomRowIndex {
            let middleRowIndex = topRowIndex + (bottomRowIndex - topRowIndex) / 2
            let middleRow = matrix[middleRowIndex]
            var middleRowLeftIndex = 0
            var middleRowRightIndex = middleRow.count - 1
            
            
            if target < middleRow[middleRowLeftIndex] {
                bottomRowIndex = middleRowIndex - 1
            } else if target > middleRow[middleRowRightIndex] {
                topRowIndex = middleRowIndex + 1
            } else {
                while middleRowLeftIndex <= middleRowRightIndex {
                    let elementIndex = middleRowLeftIndex + (middleRowRightIndex - middleRowLeftIndex) / 2
                    let element = middleRow[elementIndex]
                    if target < element {
                        middleRowRightIndex = elementIndex - 1
                    } else if target > element {
                        middleRowLeftIndex = elementIndex + 1
                    } else {
                        return true
                    }
                }
                return false
            }
        }
        return false
    }
}
