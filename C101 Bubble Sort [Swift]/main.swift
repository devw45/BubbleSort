// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:
var newarr: [String] = []

while let input = readLine() {
    newarr.append(input)
}

var array = newarr
var endCode = false

func swap(arr: inout [String], firstIndex: Int, secondIndex: Int) {
    let temp = arr[firstIndex]
    arr[firstIndex] = arr[secondIndex]
    arr[secondIndex] = temp
}

func sort(array: inout [String]) {
    repeat{
        endCode = true
        for i in 0 ..< array.count - 1 {
            if array[i] > array[i+1] {
                swap(arr: &array, firstIndex: i, secondIndex: i+1)
                endCode = false
            }
        }
    } while endCode == false
}
    /*
    while goAgain == true {
        goAgain = false
        for i in 0 ..< a.count - 1{
            if a[i] > a[i+1] {
                swap(arr: &a, firstIndex: i, secondIndex:i + 1)
                goAgain = true
            }
        }
    }
}
*/
sort(array:&array)
for i in 0 ..< array.count {
   print(array[i])
}
