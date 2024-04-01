-- 196. Delete Duplicate Emails

DELETE p1 FROM Person p1,
    Person p2
WHERE
    p1.Email = p2.Email AND p1.Id > p2.Id


    -- delete를 사용하여 삭제하라는 문제
