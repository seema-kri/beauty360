--Create final table (ETL)
DROP TABLE IF EXISTS product_catalogue;

CREATE TABLE product_catalogue AS
SELECT *
FROM stg_product_catalogue;

ALTER TABLE product_catalogue
DROP COLUMN IF EXISTS ingredients,
DROP COLUMN IF EXISTS highlights;

ALTER TABLE product_catalogue
ADD PRIMARY KEY (product_id);

--Data validation
SELECT
    COUNT(*) AS total_products,
    COUNT(DISTINCT product_id) AS unique_products,
    COUNT(DISTINCT brand_name) AS total_brands,
    COUNT(DISTINCT primary_category) AS total_categories,
    ROUND(AVG(price_usd)::numeric, 2) AS average_price,
    ROUND(AVG(rating)::numeric, 2) AS average_rating
FROM product_catalogue;

--Which product categories have the largest catalogue and highest average customer interest?
SELECT
    primary_category,
    COUNT(*) AS product_count,
    ROUND(AVG(price_usd)::numeric, 2) AS average_price,
    ROUND(AVG(loves_count)::numeric, 0) AS avg_loves
FROM product_catalogue
GROUP BY primary_category
ORDER BY product_count DESC;

--Which brands have the highest average customer interest, considering only brands with at least 20 products?
SELECT
    brand_name,
    COUNT(*) AS product_count,
    ROUND(AVG(loves_count)::numeric, 0) AS avg_loves
FROM product_catalogue
GROUP BY brand_name
HAVING COUNT(*) >= 20
ORDER BY avg_loves DESC
LIMIT 10;

--How do product price segments compare in terms of catalogue size, average price and customer rating?
SELECT
    price_segment,
    COUNT(*) AS product_count,
    ROUND(AVG(price_usd)::numeric, 2) AS avg_price,
    ROUND(AVG(rating)::numeric, 2) AS avg_rating
FROM product_catalogue
GROUP BY price_segment
ORDER BY avg_price;