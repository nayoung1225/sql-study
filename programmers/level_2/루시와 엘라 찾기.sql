/**
 * [문제] 루시와 엘라 찾기 (Level 2)
 * [학습 포인트]
 * 1. IN 연산자: 여러 개의 특정 값 중 하나라도 일치하는 데이터를 찾을 때 사용. 
 * (OR 연산자를 여러 번 쓰는 것보다 훨씬 깔끔함!)
 * 2. 문자열 리스트: IN ('A', 'B', 'C') 처럼 각각 홀따옴표로 감싸줘야 함.
 * 3. 정렬: ANIMAL_ID 순으로 오름차순 정렬.
 */

SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE
FROM ANIMAL_INS 
WHERE NAME IN ('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty')
ORDER BY ANIMAL_ID;