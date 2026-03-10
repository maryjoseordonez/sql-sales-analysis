/*🏆 1️⃣ Top 10 productos más rentables*/
SELECT 
    product_name,
    SUM(profit) AS total_profit
FROM sales
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;

/* 🌎 2️⃣ Ventas por región */
SELECT 
    region,
    SUM(sales) AS total_sales
FROM sales
GROUP BY region
ORDER BY total_sales DESC;

/* 📈 3️⃣ Tendencia de ventas por mes */
SELECT 
    DATE_TRUNC('month', order_date) AS month,
    SUM(sales) AS total_sales
FROM sales
GROUP BY month
ORDER BY month;

/* 👥 4️⃣ Ventas por segmento de cliente */
SELECT 
    segment,
    SUM(sales) AS total_sales
FROM sales
GROUP BY segment
ORDER BY total_sales DESC;

/* 📦 5️⃣ Categorías de productos más vendidas */
SELECT 
    category,
    SUM(sales) AS total_sales
FROM sales
GROUP BY category
ORDER BY total_sales DESC;

/* 1️⃣ Top 10 productos más rentables */
SELECT
    "Product.Name",
    SUM("Profit") AS total_profit
FROM sales
GROUP BY "Product.Name"
ORDER BY total_profit DESC
LIMIT 10;

/* 2️⃣ Ventas por región */
SELECT
    "Region",
    SUM("Sales") AS total_sales
FROM sales
GROUP BY "Region"
ORDER BY total_sales DESC;

/* 3️⃣ Ventas por segmento de cliente */
SELECT
    "Segment",
    SUM("Sales") AS total_sales
FROM sales
GROUP BY "Segment"
ORDER BY total_sales DESC;

/* 4️⃣ Tendencia de ventas por mes */
SELECT
    DATE_TRUNC('month', "Order.Date") AS month,
    SUM("Sales") AS total_sales
FROM sales
GROUP BY month
ORDER BY month;

/* 5️⃣ Promedio de ventas por pedido */
SELECT
    AVG("Sales") AS avg_sales_per_order
FROM sales;

/* 6️⃣ Número total de pedidos */
SELECT
    COUNT(DISTINCT "Order.ID") AS total_orders
FROM sales;

/* 7️⃣ Productos con pérdidas (profit negativo) */
SELECT
    "Product.Name",
    SUM("Profit") AS total_profit
FROM sales
GROUP BY "Product.Name"
HAVING SUM("Profit") < 0
ORDER BY total_profit;

/*  */
