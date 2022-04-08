/* 10. A partir dos valores da aceleração (a em m/s2), da velocidade inicial (v0 em m/s) e do tempo de percurso
(t em s). */

void main() {
  double v = 10;
  double a = 2;
  double t = 5;

  double vf = v + (a * t);
  print(vf);

  String vlFinal = (vf <= 40)
      ? "Veículo muito lento"
      : vf > 40 && vf <= 60
          ? "Velocidade permitida"
          : vf > 60 && vf <= 80
              ? "Velocidade de cruzeiro"
              : vf > 80 && vf <= 120
                  ? "Veículo rápido"
                  : 'Veículo muito rápido';

  print(vlFinal);
}
