REM ������J��
REM https://hp.vector.co.jp/authors/VA008683/basicw32.htm

REM �����ݒ�
LET PN_UPPER_LIMIT=1000000
DIM PN_ARR(PN_UPPER_LIMIT)
REM ����
INPUT PROMPT "�f�����ǂ������肷�鐔= ": J_NUM
LET PN_ARR(1)=1
REM �G���g�X�e�l�X���
FOR I = 2 TO J_NUM
   IF PN_ARR(I) = 0 THEN
      FOR J = I*2 TO J_NUM STEP I
         LET PN_ARR(J) = 1
      NEXT J
   END IF
NEXT I
IF PN_ARR(J_NUM) = 0 THEN
   PRINT J_NUM; "�͑f���ł��B"
ELSE
   PRINT J_NUM; "�͑f���ł͂Ȃ��ł��B"
END IF
END
