! Copyright 2021-2025 Free Software Foundation, Inc.
!
! This program is free software; you can redistribute it and/or modify
! it under the terms of the GNU General Public License as published by
! the Free Software Foundation; either version 3 of the License, or
! (at your option) any later version.
!
! This program is distributed in the hope that it will be useful,
! but WITHOUT ANY WARRANTY; without even the implied warranty of
! MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
! GNU General Public License for more details.
!
! You should have received a copy of the GNU General Public License
! along with this program.  If not, see <http://www.gnu.org/licenses/>.

subroutine fn(arr2)
  integer(4) :: arr2(:,:)
  real r1, r2
  real(8) r3, r4
  integer i1
  integer(8) i2
  logical l1
  logical(1) l2
  complex c1
  complex(8) c2
  integer arr1(10)
  character(len=:), allocatable :: str1
  character(len=10) :: str2
  str1 = 'Everest'
  str2 = 'Mount'
  r1 = 1.5
  r2 = 3.5
  r3 = 11.5
  r4 = 13.5
  c1 = cmplx(r1,r2)
  c2 = cmplx(r3,r4)
  i1 = 25
  i2 = 35
  l1 = .TRUE.
  l2 = .FALSE.
  arr1 = 5

  !$omp target map(tofrom: r1, r2, i1, l1, c1, str1, str2, r3, r4, c2, l2, i2, arr2, arr3, n)
    i1 = i1 + 1
    i2 = i2 + 1
    r1 = r1 + 1
    r2 = r2 + 1
    r3 = r3 + 1
    r4 = r4 + 1
    c1 = cmplx(r1,r2)
    c2 = cmplx(r3,r4)
    str1 = 'Flang'
    str2 = 'Fortran'
    arr1(2) = 6
    l1 = .FALSE.
    l2 = .TRUE.
    arr2(1,1) = 35
    arr1(3) = 7   ! Breakpoint
  !$omp end target
end

program test
  interface
    subroutine fn (arr2)
    integer(4) :: arr2 (:, :)
    end subroutine
  end interface
  integer a(3,4)
  a = reshape([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], shape(a))
  call fn(a)
end program test
