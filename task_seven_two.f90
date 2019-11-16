 program ackermann
   integer :: myfactorial
   write(*,*) myfactorial(15)
 end program ackermann

recursive function myfactorial (n) result (fac)
implicit none
   integer :: fac
   integer, intent (in) :: n
   select case (n)
      case (0:1)
         fac = 1
      case default
         fac = n * myfactorial (n-1)
   end select
end function myfactorial
