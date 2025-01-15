!
!***********************************************************************
!                                                                      *
      INTEGER FUNCTION LVAL (SYMBOL)
!                                                                      *
!   Modified by Gediminas Gaigalas,                   September 1997   *
!   Modified by G. Gaigalas,                                May 2011   *
!                                                                      *
!***********************************************************************
!-----------------------------------------------
!   M o d u l e s
!-----------------------------------------------
!...Translated by Pacific-Sierra Research 77to90  4.3E  21:52:17  11/14/01
!...Switches:
!-----------------------------------------------
      IMPLICIT NONE
!-----------------------------------------------
!   D u m m y   A r g u m e n t s
!-----------------------------------------------
      CHARACTER , INTENT(IN) :: SYMBOL
!-----------------------------------------------
!   L o c a l   V a r i a b l e s
!-----------------------------------------------
      INTEGER           :: LOCATE
      CHARACTER(LEN=42) :: SET
!
      DATA SET/ 'spdfghiklmnoqrtuvwxyzSPDFGHIKLMNOQRTUVWXYZ'/
!-----------------------------------------------
      LOCATE = INDEX(SET,SYMBOL)
      IF (LOCATE <= 21) THEN
         LVAL = LOCATE - 1
      ELSE
         LVAL = LOCATE - 22
      ENDIF
      RETURN
      END FUNCTION LVAL
