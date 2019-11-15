program example2
    implicit none
    integer :: array_size = 20
    integer :: i,j, array_size_1st_d, array_size_2nd_d
    real, allocatable :: common_array(:)
    integer :: x = merge(10,5,10>5) !ternar operator
    real, allocatable :: common_2d_array(:, :)  ! for task 2.3

    print *, "--------  2.3  ---------"!2.3 dynamic memory arrays
    array_size_1st_d =10
    array_size_2nd_d = 20
    allocate(common_2d_array(array_size_1st_d, array_size_2nd_d))
    print *, "first 2d array usage"
    do i=1, array_size_1st_d
        do j=1,array_size_2nd_d
            common_2d_array(i,j) = i+j
        end do
        print *, common_2d_array(i,:)
    end do
    deallocate(common_2d_array)

    array_size_1st_d = 4
    allocate(common_2d_array(array_size_1st_d, 1))
    print *,"second 2d array usage"
    do i=1, array_size_1st_d
     print *, "element number: ", i, " is ", common_2d_array(i, 1)
    end do
end program example2
