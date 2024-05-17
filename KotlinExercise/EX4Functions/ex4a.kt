fun Sortnums(array: IntArray) {
    val n = array.size
    for (i in 0 until n - 1) {
        for (j in 0 until n - i - 1) {
            if (array[j] > array[j + 1]) {
                val temp = array[j]
                array[j] = array[j + 1]
                array[j + 1] = temp
            }
        }
    }
}

fun main() {
    println("Enter the numbers to be sorted")
    val input = readLine()
    val numbers = input?.split(" ")?.mapNotNull { it.toIntOrNull() }?.toIntArray()

    if (numbers != null) {
        Sortnums(numbers)
        println("Sorted Numbers aare: ${numbers.joinToString()}")
    } else {
        println("there was an error")
    }
}