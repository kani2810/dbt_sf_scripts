{% snapshot emp_changes_snp %}
    {{
        config(
            target_schema='SNP_SC',
            target_database='SNP_DB',
            unique_key='ID',
            strategy='check',
            check_cols=['salary'],
            invalidate_hard_deletes=true
        )
    }}

    select * from {{ ref('emp1') }}
 {% endsnapshot %}