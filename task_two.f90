program use_forall
integer, parameter :: M=10
integer a(M)
a=(/2,-2,6,2,-8,1,-1,4,-6,2/)

! task 2.1
forall (i=1:M, a(i)<0)
       a(i)=0
end forall
open(1, file='example2.dat')
write(1,*) (a(i),i=1,10)
close(1)
write(*,"(100(i4)) ") a

! task 2.2
print *, "operation all"    , all( a >2)
print *, "operation any"    , any( a >2)
print *, "operation 'count' true elements"  , count( a >2)
print *, "operation size"   , size( a >2)
print *, "operation shape"  , shape( a >2)

print *, "operation 'cshift' circular shift", cshift(a, 1)
print *, "operation 'eoshift' left or right shift", eoshift(a, -1)

print *, "operation before reshape", a(1:10)
print *, "operation reshape", reshape(a(1:10), (/2, 5/) )
print *, "operation transpose", transpose(reshape(a(1:10), (/2, 5/) ))

end
