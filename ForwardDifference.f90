MODULE DIFFERENCE
  IMPLICIT NONE
 
  CONTAINS
 
  SUBROUTINE Fdiff(a, n)
    INTEGER, INTENT(IN) :: a(:), n
    INTEGER :: b(SIZE(a))  
    INTEGER :: i, j, arraysize
 
    b = a
    arraysize = SIZE(b)
    DO i = arraysize-1, arraysize-n, -1
      DO j = 1, i
        b(j) = b(j+1) - b(j)
      END DO
    END DO
    WRITE (*,*) b(1:arraysize-n)
  END SUBROUTINE Fdiff
END MODULE DIFFERENCE


PROGRAM TEST
 
  USE DIFFERENCE
  IMPLICIT NONE
 
  INTEGER :: array(10) = (/ 90, 47, 58, 29, 22, 32, 55, 5, 55, 73 /)
  INTEGER :: i
 
  DO i = 1, 9
    CALL Fdiff(array, i)
  END DO
 
  END PROGRAM TEST
