#include <stdio.h>
#include <cstdlib>
#include <sys/time.h>

#define N 1000000000
#define ITER 100

void suma(float x, float y, float *z){
  *z = x + y;
}

int main(){
  int i, j;
  static float x[N], y[N], z[N];

  struct timeval inicio,final;
  double tiempo;

  gettimeofday(&inicio, NULL);

  for(j=0; j<ITER; j++)
    for(i=0; i<N; i++){
      suma(x[i], y[i], &z[i]);
    }

  gettimeofday(&final,NULL );

  tiempo = (final.tv_sec-inicio.tv_sec+(final.tv_usec-inicio.tv_usec)/1.e6);

  printf("\nresultado: %f %f",z[0],tiempo);
  return 0;

}

