func calculateArea(width: Int, height: Int) -> Int {
    return width * height
}

let widthString = "10"
let widthInt = Int(widthString)! // Convert String to Int, handle potential nil

let area = calculateArea(width: widthInt, height: 5) // Correct usage
print(area) // Output: 50

//Error Handling
func calculateAreaSafe(width: String?, height: String?) -> Int? {
    guard let widthInt = Int(width ?? "0"), let heightInt = Int(height ?? "0") else {
        return nil //Handle potential errors
    }
    return widthInt * heightInt
}
let area3 = calculateAreaSafe(width: "10", height: "5")
print(area3 ?? 0) //Output: 50
let area4 = calculateAreaSafe(width: "abc", height: "5")
print(area4 ?? 0) //Output: 0