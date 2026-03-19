/**
 * [문제] 조건에 부합하는 중고거래 상태 조회하기 (Level 2)
 * [목표] 2022년 10월 5일에 등록된 게시물의 상태를 한글로 변환하여 출력
 */

-- 💡 오늘 공부한 내용:
-- 1. CASE WHEN: 조건에 따라 값을 변환 (프로그래밍의 if-else 역할)
-- 2. TO_CHAR (Oracle): 날짜를 특정 문자 형식으로 변환 (MySQL은 DATE_FORMAT)
-- 3. END AS [별칭]: CASE 문은 반드시 END로 닫고 별칭을 붙여야 컬럼명이 예쁘게 나옴

SELECT BOARD_ID, WRITER_ID, TITLE, PRICE, 
        CASE 
            WHEN STATUS = 'SALE' THEN '판매중'
            WHEN STATUS = 'RESERVED' THEN '예약중'
            WHEN STATUS = 'DONE' THEN '거래완료'
        END AS STATUS
FROM USED_GOODS_BOARD
WHERE TO_CHAR(CREATED_DATE, 'YYYY-MM-DD') = '2022-10-05'
ORDER BY BOARD_ID DESC;