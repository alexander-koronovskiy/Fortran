subroutine sub(arr)
  implicit none
  double precision arr(*)
end subroutine

subroutine swap(a, b, m, n)
 integer m, n
 real a(m*n), b(m*n)
 real c(size(a))
 c = a
 a = b
end subroutine swap

program task
 integer, parameter :: n = 5, m = 10, k = m*n
 real a(m, n) /k*1.0/, b(m, n) /k*2.0/
 call swap(a, b, m, n)
 write(*, *) b
end
