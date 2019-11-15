program example1
    implicit none
    integer :: i
    ! Arrays for 1.3
    real, allocatable :: real_array(:, :)
    complex, allocatable :: complex_array(:)
    
    allocate (real_array (4, 2))
    real_array(:,1) = 1.0
    real_array(1:2, 2) = -1.0
    real_array(3:4, 2) = -2.0
    print *, "2d real array: "
    print '(4f10.5)', real_array

    allocate (complex_array (4))
    do i = 1, size(real_array, 1)
        complex_array(i) = complex(real_array(i,1), real_array(i,2))
    end do
    print *, "complex array: "
    print '(f10.5,f10.5,"i")', complex_array

    deallocate(real_array)
    deallocate(complex_array)
end program example1
