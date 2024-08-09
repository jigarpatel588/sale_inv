
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below

*/
{{ config(materialized='view') }}


SELECT 
  Order_ID,
  Customer_Name,
  Country,
  City,
  State,
  Category,
  Sales,
  Quantity,
  Profit
FROM `superb-reporter-430115-t3.w_sal.sale_out`;


/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
