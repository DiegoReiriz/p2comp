#include <stdio.h>
#include <cstdlib>
#include <sys/time.h>

#define N 100000000
#define ITER 100

int main(){
  int i, k;
  float a, b;
  static float x[N], y[N];

  struct timeval inicio,final;
  double tiempo;

  gettimeofday(&inicio, NULL);

  for(k=0; k<ITER; k++) {
    if(a*k==0) {
      for(i=0; i<N; i++)
        x[i] = 0;
    }
    else {
      for(i=0; i<N; i++)
        y[i] = x[i]*y[i];
    }
  }

  gettimeofday(&final,NULL );

  tiempo = (final.tv_sec-inicio.tv_sec+(final.tv_usec-inicio.tv_usec)/1.e6);

  printf("\nresultado: %f %f",y[0],tiempo);
  return 0;

}

