1. Retrieve customer names and emails for email marketing
This helps the marketing team extract basic customer contact details for campaigns.
2. View complete product catalog with all available details
The product manager may want to review all product listings in one go.
3. List all unique product categories
Useful for analyzing the range of departments or for creating filters on the website.
4. Show all products priced above ₹1,000
This helps identify high-value items for premium promotions or pricing strategy reviews.
5. Display products within a mid-range price bracket (₹2,000 to ₹5,000)
A merchandising team might need this to create a mid-tier pricing campaign.
6. Fetch data for specific customer IDs (e.g., from loyalty program list)
This is used when customer IDs are pre-selected from another system.
7. Identify customers whose names start with the letter ‘A’
Used for alphabetical segmentation in outreach or app display.
8. List electronics products priced under ₹3,000
Used by merchandising or frontend teams to showcase budget electronics.
9. Display product names and prices in descending order of price
This helps teams easily view and compare top-priced items.
10. Display product names and prices, sorted by price and then by name
The merchandising or catalog team may want to list products from most expensive to cheapest. If
multiple products have the same price, they should be sorted alphabetically for clarity on storefronts or
printed catalogs.
Level 2: Filtering and Formatting
1. Retrieve orders where customer information is missing (possibly due to data migration or
deletion)
Used to identify orphaned orders or test data where customer_id is not linked.
2. Display customer names and emails using column aliases for frontend readability
Useful for feeding into frontend displays or report headings that require user-friendly labels.
3. Calculate total value per item ordered by multiplying quantity and item price
This can help generate per-line item bill details or invoice breakdowns.
© Career247
Data Analytics with GenAI
SQL: Mini Project
4. Combine customer name and phone number in a single column
Used to show brief customer summaries or contact lists.
5. Extract only the date part from order timestamps for date-wise reporting
Helps group or filter orders by date without considering time.
6. List products that do not have any stock left
This helps the inventory team identify out-of-stock items.
Level 3: Aggregations
1. Count the total number of orders placed
Used by business managers to track order volume over time.
2. Calculate the total revenue collected from all orders
This gives the overall sales value.
3. Calculate the average order value
Used for understanding customer spending patterns.
4. Count the number of customers who have placed at least one order
This identifies active customers.
5. Find the number of orders placed by each customer
Helpful for identifying top or repeat customers.
6. Find total sales amount made by each customer
7. List the number of products sold per category
This helps category managers assess performance by department.
8. Find the average item price per category
Useful to compare pricing across departments.
9. Show number of orders placed per day
Used to track daily business activity and demand trends.
10. List total payments received per payment method
Helps the finance team understand preferred transaction modes.
Level 4: Multi-Table Queries (JOINS)
1. Retrieve order details along with the customer name (INNER JOIN)
Used for displaying which customer placed each order.
2. Get list of products that have been sold (INNER JOIN with order_items)
Used to find which products were actually included in orders.
3. List all orders with their payment method (INNER JOIN)
© Career247
Data Analytics with GenAI
SQL: Mini Project
Used by finance or audit teams to see how each order was paid for.
4. Get list of customers and their orders (LEFT JOIN)
Used to find all customers and see who has or hasn’t placed orders.
5. List all products along with order item quantity (LEFT JOIN)
Useful for inventory teams to track what sold and what hasn’t.
6. List all payments including those with no matching orders (RIGHT JOIN)
Rare but used when ensuring all payments are mapped correctly.
7. Combine data from three tables: customer, order, and payment
Used for detailed transaction reports.
Level 5: Subqueries (Inner Queries)
1. List all products priced above the average product price
Used by pricing analysts to identify premium-priced products.
2. Find customers who have placed at least one order
Used to identify active customers for loyalty campaigns.
3. Show orders whose total amount is above the average for that customer
Used to detect unusually high purchases per customer.
4. Display customers who haven’t placed any orders
Used for re-engagement campaigns targeting inactive users.
5. Show products that were never ordered
Helps with inventory clearance decisions or product deactivation.
6. Show highest value order per customer
Used to identify the largest transaction made by each customer.
7. Highest Order Per Customer (Including Names)
Used to identify the largest transaction made by each customer. Outputs name as well.
Level 6: Set Operations
1. List all customers who have either placed an order or written a product review
Used to identify engaged customers from different activity areas.
2. List all customers who have placed an order as well as reviewed a product [intersect not
supported]
Used to identify highly engaged customers for rewards
