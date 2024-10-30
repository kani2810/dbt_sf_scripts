{% snapshot emp3_changes_snp %}
    {{
        config(
            target_schema='SNP_SC',
            target_database='SNP_DB',
            unique_key='ID',
            strategy='timestamp',
            invalidate_hard_deletes=True,
            updated_at='Modified_Date'
        )
    }}

    select * from {{ ref('emp2') }}
 {% endsnapshot %}