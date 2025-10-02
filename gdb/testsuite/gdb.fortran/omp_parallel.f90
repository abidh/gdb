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

program test
  integer a(10)
  call fn(a)

contains 

subroutine fn(arr)
  integer :: arr(:)
  integer x
  x = 0
  !$omp target teams distribute parallel do map(tofrom: x, arr) num_threads(1) num_teams(1) private(i)
  do i = 1, 9
    arr(i) = i
    x = x + 1
    x = x  ! BP 1
  end do
  !$omp end target teams distribute parallel do

  arr = 0
  x = 0
  !$omp target teams distribute map(tofrom: x, arr) num_teams(1) private(i)
  do i = 1, 10
    arr(i) = i
    x = x + 1
    x = x  ! BP 2
  end do
  !$omp end target teams distribute

end

end program test
