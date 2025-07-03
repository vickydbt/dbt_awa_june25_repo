 with unioned as (
    {{ dbt_utils.union_relations(
         relations=[ref('stg_users'), ref('stg_customers')],
         include=['id', 'name', 'created_at']
    ) }}
)
select * from unioned
