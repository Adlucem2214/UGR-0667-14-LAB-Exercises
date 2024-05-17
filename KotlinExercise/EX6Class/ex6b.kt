class Triangle(val side1: Double, val side2: Double, val side3: Double) {

    fun determineTriangleType(): String {
        return when {
            side1 == side2 && side2 == side3 -> "Equilateral"
            side1 == side2 || side1 == side3 || side2 == side3 -> "Isosceles"
            else -> "Scalene"
        }
    }
}

fun main() {
    
    println("Enter the length of side1:")
    val side1 = readLine()?.toDoubleOrNull()

    println("Enter the length of side 2:")
    val side2 = readLine()?.toDoubleOrNull()

    println("Enter the length of side3:")
    val side3 = readLine()?.toDoubleOrNull()

    if (side1 != null && side2 != null && side3 != null) {
        val triangle = Triangle(side1, side2, side3)
        val triangleType = triangle.determineTriangleType()

        println("triangle type: $triangleType")
    } else {
        println("invalid input.")
    }
}