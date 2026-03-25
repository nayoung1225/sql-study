/**
 * [문제] 고양이와 강아지는 몇 마리 있을까 (Level 2)
 * [학습 포인트]
 * 1. GROUP BY: 특정 컬럼(동물 종류)을 기준으로 데이터를 그룹화함.
 * 2. COUNT(*): 그룹별 데이터의 개수를 추출.
 * 3. ORDER BY: 결과의 정렬 순서를 지정. 'Cat'이 'Dog'보다 사전순으로 앞섬.
 */

SELECT ANIMAL_TYPE, COUNT(ANIMAL_TYPE) AS count
FROM ANIMAL_INS 
GROUP BY ANIMAL_TYPE
ORDER BY ANIMAL_TYPE;