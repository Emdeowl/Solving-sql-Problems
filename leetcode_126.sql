-- 1517. Find Users With Valid E-Mails
--유효한 이메일을 가진 사용자를 찾기 위한 솔루션을 작성합니다. 유효한 전자 메일은 접두사 이름과 도메인이 있습니다: 접두사 이름은 문자(대소문자 또는 소문자), 숫자, 밑줄 '_', 마침표 '.' 및/또는 대시 '-'를 포함할 수 있는 문자열이다. 접두사 이름은 문자로 시작해야 합니다. 도메인은 '@leetcode.com'입니다.


select
    *
from
    Users
WHERE 
    mail REGEXP '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode[.]com$'
order by
    user_id


--https://leetcode.com/problems/find-users-with-valid-e-mails/