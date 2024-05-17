fun main() {
    println("Enter the number of hours worked:")
    val hoursWorked = readLine()!!.toDouble()

    println("Enter the hourly rate:")
    val hourlyRate = readLine()!!.toDouble()

    val regularHours = 40.0
    val overtimeRate = 1.5

    val overtimeHours = if (hoursWorked > regularHours) hoursWorked - regularHours else 0.0

    val regularPay = if (hoursWorked <= regularHours) {
        hoursWorked * hourlyRate
    } else {
        regularHours * hourlyRate
    }

    val overtimePay = overtimeHours * hourlyRate * overtimeRate

    val totalSalary = regularPay + overtimePay

    println("Regular Pay: $regularPay")
    println("Overtime Pay: $overtimePay")
    println("Total Salary: $totalSalary")
}