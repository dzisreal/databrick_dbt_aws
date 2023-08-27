with customer as 
(select
    cast(a.cst_id as varchar(100)) as ip_id,
    '20230826' as ppn_dt,
    cast(a.cst_id as varchar(100)) as scr_stm_id,
    cast(a.cst_id as varchar(100)) as UNQ_ID_IN_SRC_STM,
    'ip_tp_id' as ip_tp_id,
    cast(a.cst_name as varchar(100)) as ip_nm,
    '20230826' as eff_dt,
    '99991231' as end_dt
from {{ref('base_hoand_customer')}} a),

branch as 
(select 
    cast(B.BR_CODE as varchar(100)) as Ip_ID,
    '20230826' as ppn_dt,
    cast(b.BR_CODE as varchar(100)) as SRC_STM_ID,
    cast(b.BR_CODE as varchar(100)) as UNQ_ID_IN_SRC_STM,
    'ip_tp_id' as IP_TP_ID,
    cast(b.BR_NAME as varchar(100))as IP_NM,
    '20230826' as EFF_DT,
    '99991231' as END_DT
FROM {{ref('base_hoand_branch')}} B)

select * from customer 
union
select * from branch
