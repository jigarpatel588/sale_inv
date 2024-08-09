
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below

*/
{{ config(materialized='view') }}

WITH raw_sale AS (
  SELECT
  Order_ID,
  Customer_Name,
  Product_Name,
  Order_Date,
  Sales,
  Quantity,
  Profit
FROM `superb-reporter-430115-t3.w_sal.sale_out`)
select * from raw_sale;


/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
