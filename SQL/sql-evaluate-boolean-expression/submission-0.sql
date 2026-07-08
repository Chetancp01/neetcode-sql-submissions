-- Write your query below


select 
    e.left_operand,
    e.operator,
    e.right_operand,
    CASE WHEN e.operator = '>' THEN v.value > v1.value
        WHEN e.operator = '<' THEN v.value < v1.value
        WHEN e.operator = '=' THEN v.value = v1.value
    END as value
from  expressions e
left join variables v on e.left_operand = v.name
left join variables v1 on e.right_operand = v1.name