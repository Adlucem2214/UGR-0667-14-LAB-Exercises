fun main() {
    println("Enter the month:")
    val month = readLine()!!.toInt()

    println("Enter the day of the month:")
    val day = readLine()!!.toInt()

    val season = when (month) {
        12, 1, 2 -> "Winter"
        in 3..5 -> if (month == 3 && day < 20) "Winter" else "Spring"
        in 6..8 -> if (month == 6 && day < 21) "Spring" else "Summer"
        in 9..11 -> if (month == 9 && day < 22) "Summer" else "Fall"
        else -> "Invalid month"
    }

    println("Season: $season")
}