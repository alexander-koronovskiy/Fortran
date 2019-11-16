  program zadanie2
    implicit none
    real :: w(4),Q(3),tf,re(4),d,l,ro,mu,t(4,3),nu(4),lyam,pr,cp

    integer :: i,j
    open(3, file='rezults.txt')
    Q = 1d0
    w = 3d0
    print 4, (Q(j), j=1,3)
    write(3,4) (Q(j), j=1,3)

    do i=1,4
        do j=1,3
            t(i,j)=2d0
        enddo
        print 3, i, w(i),(t(i,j), j=1,3)
        write(3,33) i, w(i), (t(i,j), j=1,3)
    enddo
    close(3)


2   format (1x,48('-'))
3   format (1x,'|',i3,'|',f7.2,'|',3(f10.3, '|'))
33  format (1x,'|',i3,'|',f7.2,'|',3(f10.3, '|'))
4   format (1x,'|',11x,'|',3(f10.1,'|'))
    end
