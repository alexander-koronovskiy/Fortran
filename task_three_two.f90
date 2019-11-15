program forall_test
  integer :: i, ii, a(10), b(20)
  a=(/(i, i=1,10)/)
  forall(i=1:20)
     b(i) = a(set(i))
  end forall

print *, b

contains
  pure function set(i)
    integer, intent(in) :: i
    integer :: set
    set = (i+1)/2
  end function set
end program
