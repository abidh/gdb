/* This testcase is part of GDB, the GNU debugger.

   Copyright (C) 2013 Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

#include <stdio.h>
#include <pthread.h> 

int
factorial (int a)
{
  if(a == 0)
    return 1;

  return (a * factorial(a-1));
}


void*
worker (void* arg)
{
  int keep_running = 1;
  int res;
  while (keep_running)
      res = factorial (7);

  return 0;			
}

#ifndef THREAD_COUNT
  #define THREAD_COUNT 50
#endif

int
main(int argc, char** argv)  {
  pthread_t thread[THREAD_COUNT];
  int thread_count = THREAD_COUNT;
  int i = 0;
  if(argc > 1)
    thread_count = atoi(argv[1]);

  if(thread_count > THREAD_COUNT)
    thread_count = THREAD_COUNT;

  for(i =0; i < thread_count; i++ )
    pthread_create(&thread[i], NULL, worker, (void*)0);

  for(i =0; i < thread_count; i++ ) /*bp-marker-1 */
    pthread_join(thread[i], NULL);

  return 0;
}
