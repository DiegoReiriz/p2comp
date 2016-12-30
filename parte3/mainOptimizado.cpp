#include <stdio.h>
#include <cstdlib>
#include <sys/time.h>

#define N 100000000
#define ITER 100

void suma2(float *x, float *y, float *z){
  register int i, j;
  for(j=0; j<ITER; j++)
    for(i=0; i<N; i++)
      z[i] = x[i] + y[i];
}

int main(){
  static float x[N], y[N], z[N];

  struct timeval inicio,final;
  double tiempo;

  gettimeofday(&inicio, NULL);

  suma2(x, y, z);

  gettimeofday(&final,NULL );

  tiempo = (final.tv_sec-inicio.tv_sec+(final.tv_usec-inicio.tv_usec)/1.e6);

  printf("\n%lf",z[0]);
  printf("\n%lf",tiempo);
  printf("\n");

  return 0;

}

