-- 1527. Patients With a Condition

select
    patient_id,
    patient_name,
    conditions
from
    Patients
where
    conditions regexp '(^|\\b)DIAB1'

    -- https://leetcode.com/problems/patients-with-a-condition/?source=submission-ac
    -- https://kwon850550.tistory.com/74 << 정리