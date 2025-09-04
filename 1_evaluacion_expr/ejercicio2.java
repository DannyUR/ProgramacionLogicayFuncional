public class Example(){

    public static void main(String[] args){ 
       //Expresión 1
        int x=10;
        int b=10;

        System.out.println(x++);
        /**Justificación: Primero se imprime la variable y posteriormente se hace el incremento
         * Resultado en consola: 10
         */


        //Expresión 2
        int x=10;
        int b=10;

        System.out.println(++x);
        /**Justificación: primero incrementa x, luego imprime
         * Resultado en consola: 11
         */


        //Expresión #3
        int x=10;
        int b=10;

        b++ * -3 == -3 % x++
        /**Justificación: 
         * b++ = 10 (luego b=11).
        10 * -3 = -30.
        x++ = 10 (luego x=11).
        -3 % 10 = -3.
        Comparación: -30 == -3 → false.
        Resultado en consola: false.
         */


        //Expresión #4
        int x=10;
        int b=10;

        30 - 10 /= % ++b + 30 % 7 * 2
        /**Justificación: Esto es inválido en Java (/= y % pegados no tienen sentido).
         * Correción: System.out.println(30 - 10 / (++b) + 30 % 7 * 2);
         * 
        ++b = 11.
        10 / 11 = 0.
        30 % 7 = 2.
        2 * 2 = 4.
        30 - 0 + 4 = 34.
        Resultado en consola: 34
         */


        //Expresión #5
        int x=10;
        int b=10;

        x =  -50 * x++ * 80 % b / 4 *=8
        /**Justificación: No se puede usar *=8 al final dentro de la misma asignación.
         * Correción: x = (-50 * x++ * 80 % b / 4) * 8;
         * 
        x++ = 10 (luego x=11).
        -50 * 10 * 80 = -40000.
        -40000 % 10 = 0.
        0 / 4 = 0.
        0 * 8 = 0.
        Resultado en consola: x = 0.
         */


        //Expresión #6
        int x=10;
        int b=10;

        b*= x++ - 8 + 3 - 5 / 4 % - 3 + 8
        /**Justificación:
        x++ = 10 (luego x=11).
        5 / 4 = 1.
        1 % -3 = 1.
        Sustituimos: 10 - 8 + 3 - 1 + 8 = 12.
        b *= 12 → 10 * 12 = 120.
        Resultado en consola: b = 120.
         */


        //Expresión #7
        int x=10;
        int b=10;

        x = b * = 50 / 30 * ++x + 80
        /**Justificación:El *= dentro de otra asignación no es válido
         * Correción: b *= (50 / 30) * (++x + 80); x = b;
        ++x = 11.
        (50 / 30) = 1.
        1 * (11 + 80) = 91.
        b = 10 * 91 = 910.
        x = 910.
        Resultado en consola: x = 910, b = 910.
         */        


        //Expresión #8
        int x=10;
        int b=10;

        ++x % 20.2 == -x /= b % = --x
        /**Justificación:No se puede % 20.2 porque 20.2 es double. Tampoco b %= --x dentro de ==.
         * Correción: System.out.println((++x % 20) == (-x / (b %= --x)));
        ++x incrementa x antes de usarlo.
        % 20 hace el módulo con 20.
        b %= --x asigna a b el residuo de b % (--x).
        -x / (b %= --x) divide el valor negativo de x entre el resultado de b.
        Finalmente, se compara (==) con la primera parte.
        Resultado: El resultado depende de los valores iniciales de x y b
         */ 


        //Expresión #9
        int x=10;
        int b=10;

        1 *= b++ * b-- / 3 % ++b *= 10 + 1;
        /**Justificación: 1 *= ... no tiene sentido (1 es constante).
         * Correción: b *= (b++ * b-- / 3) % (++b * (10 + 1));
        b++ usa b y luego lo incrementa.
        b-- usa b y luego lo decrementa.
        Se hace / 3.
        Luego % (...).
        Finalmente, todo ese resultado se multiplica por b y se asigna con *=.
        Resultado: Aquí, el resultado también depende de cómo cambie b.
         */ 


        //Expresión #10
        int x=10;
        int b=10;

        -10 * -0 *= -10 *=x++ + x+=x*x ;
        /**Justificación: múltiples errores de operadores
         * Correción: 
         * x += x * x;          // primero: x = x + x*x
        int temp = x++ + x;  // luego: suma con el x post-incrementado
        int result = -10 * 0; // -10 * -0 es 0
        result *= -10 * temp; 
         * 
        x += x*x → eleva x y lo suma a sí mismo.
        x++ + x → suma el valor actual de x más x después de incrementarlo.
        -10 * -0 = 0.
        Finalmente, el *= multiplica el acumulado por la expresión.
        Resultado en consola: 0
         */ 


        //Expresión #11
        int x=10;
        int b=10;

        a * b == b++ + b-- + --b + x++ + x--;
        /**Justificación:Falta declarar a. int a = 5;
         * 
        a * b = 5 * 10 = 50.
        b++ = 10 (b=11).
        b-- = 11 (b=10).
        --b = 9.
        x++ = 10 (x=11).
        x-- = 11 (x=10).
        Suma = 10 + 11 + 9 + 10 + 11 = 51.
        Comparación: 50 == 51 → false.
        Resultado en consola: false.
         */ 

    }
}