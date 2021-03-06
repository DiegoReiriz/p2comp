#include <stdio.h>
#include <cstdlib>
#include <sys/time.h>

#define N 10000000000
#define ITER 100

int main(){
  int i, k;
  float a, b;
  static float x[N], y[N];

  struct timeval inicio,final;
  double tiempo;

  gettimeofday(&inicio, NULL);

  for(k=0; k<ITER; k++){
    for(i=0; i<N; i++)
    y[i] = a * x[i] + b;
  }

  gettimeofday(&final,NULL );

  tiempo = (final.tv_sec-inicio.tv_sec+(final.tv_usec-inicio.tv_usec)/1.e6);

  printf("\nresultado: %f %f",y[0],tiempo);
  return 0;

}

