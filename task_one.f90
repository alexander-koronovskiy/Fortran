pure function sample_func(x)
  real, intent(in) :: x
  real :: sample_func
  sample_func = x * sin(x)
end function

program main
  real :: a, b, sample_func
  a = 2.0
  b = sample_func(a)
  print *, b
  ! After invoking the square(.) pure function, we can be sure that
  ! besides assigning the output value of square(a) to b,
  ! nothing else has been changed.
end program main
