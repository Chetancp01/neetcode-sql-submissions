-- Write your query below

select 
    student_id, 
    exam_id, 
    score
from (
    select *, 
        ROW_NUMBER() over (
            PARTITION by student_id
            order by score desc, exam_id asc
        ) as r from exam_results 
) where r = 1