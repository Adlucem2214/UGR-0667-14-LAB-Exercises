fun main() {
    println("Enter the lengths of the three sides of the triangle:")
    val side1 = readLine()!!.toDouble()
    val side2 = readLine()!!.toDouble()
    val side3 = readLine()!!.toDouble()

    if (side1 == side2 && side2 == side3) {
        println("Equilateral triangle")
    } else if (side1 == side2 || side1 == side3 || side2 == side3) {
        println("Isosceles triangle")
    } else {
        println("Scalene triangle")
    }
}