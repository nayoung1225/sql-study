/**
 * [문제] 이름에 "el"이 들어가는 개 찾기 (Level 2)
 * [학습 포인트]
 * 1. 다중 조건(AND): 이름 조건과 동물 종류(Dog) 조건을 동시에 만족해야 함.
 * 2. 대소문자 무관 검색: UPPER(NAME) LIKE '%EL%'를 사용하여 모든 케이스(el, EL, El 등)를 검색.
 * 3. 데이터 필터링: 문제 지문에 '개'라는 조건이 있으므로 ANIMAL_TYPE = 'Dog'를 추가.
 */

SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE UPPER(NAME) LIKE '%EL%'
        AND ANIMAL_TYPE = 'Dog'
ORDER BY NAME;