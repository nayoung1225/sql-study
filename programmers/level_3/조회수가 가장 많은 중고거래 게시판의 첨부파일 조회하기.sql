/**
 * [문제] 조회수가 가장 많은 중고거래 게시판의 첨부파일 조회하기 (Level 3)
 * [학습 포인트]
 * * 1. 문자열 결합 연산의 DBMS별 차이
 * - Oracle: '||' 연산자를 사용해 무제한 결합 가능. 
 * (예: 'A' || 'B' || 'C' -> 'ABC')
 * - MySQL: 'CONCAT()' 함수 사용. 
 * (예: CONCAT('A', 'B', 'C') -> 'ABC')
 * - 주의: Oracle의 CONCAT은 인자를 딱 2개만 받을 수 있음!
 * * 2. 주요 에러 해결 과정 (Troubleshooting)
 * - ORA-00923: FROM 키워드가 있어야 할 자리에 다른 문자가 올 때 발생. 
 * (MySQL 방식의 CONCAT과 쉼표를 사용했을 때 발생함)
 * - ORA-00933: SQL 명령어가 비정상적으로 종료됨. 
 * (코드 복사 시 줄 번호가 섞여 들어가거나, 보이지 않는 특수문자가 포함될 때 발생)
 * * 3. 로직 구성
 * - 서브쿼리로 MAX(VIEWS)를 찾아내어 단일 행 추출.
 * - JOIN을 통해 다른 테이블의 파일 상세 정보(ID, 이름, 확장자) 결합.
 * - 파일 경로 규격에 맞춰 문자열 연산 수행 후 정렬.
 */
SELECT '/home/grep/src/' || F.BOARD_ID || '/' || F.FILE_ID || F.FILE_NAME || F.FILE_EXT AS FILE_PATH
FROM USED_GOODS_BOARD B
JOIN USED_GOODS_FILE F ON B.BOARD_ID = F.BOARD_ID
WHERE B.VIEWS = (SELECT MAX(VIEWS) FROM USED_GOODS_BOARD)
ORDER BY F.FILE_ID DESC;