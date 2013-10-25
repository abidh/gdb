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
