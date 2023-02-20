REM ↓から開発
REM https://hp.vector.co.jp/authors/VA008683/basicw32.htm

REM 上限を設定
LET PN_UPPER_LIMIT=1000000
DIM PN_ARR(PN_UPPER_LIMIT)
REM 入力
INPUT PROMPT "素数かどうか判定する数= ": J_NUM
LET PN_ARR(1)=1
REM エラトステネスの篩
FOR I = 2 TO J_NUM
   IF PN_ARR(I) = 0 THEN
      FOR J = I*2 TO J_NUM STEP I
         LET PN_ARR(J) = 1
      NEXT J
   END IF
NEXT I
IF PN_ARR(J_NUM) = 0 THEN
   PRINT J_NUM; "は素数です。"
ELSE
   PRINT J_NUM; "は素数ではないです。"
END IF
END
