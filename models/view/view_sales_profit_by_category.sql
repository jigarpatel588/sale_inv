
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below

*/
{{ config(materialized='view') }}


SELECT 
  distinct Category,
  round(sum(sales * quantity),2) as total_vendas,
  round(sum(profit * quantity),2) as total_lucro
FROM `superb-reporter-430115-t3.w_sal.sale_out`
group by Category
order by total_lucro desc;


/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
