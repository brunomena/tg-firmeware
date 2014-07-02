#include "analise.h"

/**
 * Calcula o modulo da aceleração, supondo que os
 * acc estejam distribuidos ortogonamente.
 *
 * Deve-se limitar o valor para caber em 7 bits
 * portanto:
 *
 * sqrt(127^2 + 127^2 + 127^2) = 219
 * dividindo por 1.7 limita-se o dado
 * para 129
 *
 */

f32 norma_xyz(f32 acc_x, f32 acc_y, f32 acc_z)

{

 f32 tmp;
 tmp = ( sqrtf( powf(acc_x,2) + powf(acc_y,2) + powf(acc_z,2)) );

 return(tmp);

}
