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

module helper
  implicit none
  integer var_x
  integer var_y
  !$omp declare target(var_x)
  !$omp declare target(var_y)
end module helper


program test
  use helper
  integer i
  integer x, y

  !$omp target map(tofrom: x, y)
    call init()
    call add(x, y)
  !$omp end target

contains

subroutine init()
  !$omp declare target
  var_x = 3
  var_y = 14
  var_x = var_x ! BP 1
end

subroutine add(a, b)
  use helper
  integer a, b
!$omp declare target
  a = var_x
  b = var_y
  var_x = var_x + 1
  var_y = var_y + 1
  a = a + 1 ! BP 2
end

end program test