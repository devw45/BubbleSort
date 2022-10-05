// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [-357, -37, 561, 520, -960]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:
var a = unsortedIntegers
var swaps = 0
var Pass = 0 
var totalswaps = 0
print("Pass: \(Pass), Swaps: 0/0, Array: \(unsortedIntegers)")
func swap(integers: inout [Int], firstIndex: Int, secondIndex: Int) {
    let temp = integers[firstIndex]
    integers[firstIndex] = integers[secondIndex]
    integers[secondIndex] = temp
    totalswaps += 1
}
var goAgain = true
while goAgain == true {
    goAgain = false
    for i in 0 ..< a.count - 1 {
        if a[i] > a[i + 1] {
            swap(integers: &a, firstIndex: i, secondIndex:i + 1)
            goAgain = true
            swaps += 1
        }
    }
    Pass += 1
    print("Pass: \(Pass), Swaps: \(swaps)/\(totalswaps), Array: \(a)")
    swaps = 0
}
//Pass: 1, Swaps: 6/6, Array: [724, -694, -698, 290, -877, 0, -346]
//Pass: 1, Swaps: 6/6, Array: [-694, -698, 290, -877, 0, -346, 724]
