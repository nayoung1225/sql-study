/**
 * [문제] 중성화 여부 파악하기 (Level 2)
 */

-- 💡 오늘 공부한 내용:
-- 1. Oracle 별칭: "중성화"처럼 한글 별칭을 쓸 땐 홀따옴표(') 대신 쌍따옴표(")를 쓰거나 생략하자.
-- 2. 정렬 순서: '아이디 순'은 기본 오름차순(ASC)이므로 DESC를 붙이지 않도록 주의!
-- 3. LIKE %단어%: 특정 단어가 포함된 모든 데이터를 찾을 때 유용하다.

SELECT ANIMAL_ID, 
       NAME, 
       CASE 
           WHEN SEX_UPON_INTAKE LIKE '%Neutered%' OR SEX_UPON_INTAKE LIKE '%Spayed%' THEN 'O'
           ELSE 'X'
       END AS "중성화"
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;