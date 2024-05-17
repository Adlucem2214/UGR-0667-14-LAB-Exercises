class ShoppingCart {
    private val items = mutableMapOf<String, Double>()

    fun addItem(item: String, price: Double) {
        items[item] = price
    }

    fun removeItem(item: String) {
        items.remove(item)
    }

    fun calculateTotalPrice(): Double {
        var totalPrice = 0.0
        for ((item, price) in items) {
            totalPrice += price
        }
        return totalPrice
    }
}

fun main() {
    println("Shopping Cart")
    val cart = ShoppingCart()

    println("Enter the items to add to the cart ")
    val itemsInput = readLine()
    val items = itemsInput?.split(",")?.map { it.trim() }

    if (items != null) {
        for (item in items) {
            println("Enter the price for item '$item': ")
            val priceInput = readLine()
            val price = priceInput?.toDoubleOrNull()

            if (price != null) {
                cart.addItem(item, price)
            } else {
                println("Invalid price.")
            }
        }

        println("Enter the item to remove from the cart:")
        val itemToRemove = readLine()

        if (itemToRemove != null) {
            cart.removeItem(itemToRemove)
            val totalPrice = cart.calculateTotalPrice()

            println("Total Price: $totalPrice")
        } else {
            println("Invalid input")
        }
    }
}