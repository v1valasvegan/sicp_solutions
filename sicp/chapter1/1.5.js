//  в JS, в отличии от Racket, используется нормальный порядок вычислений, поэтому интерпретатор
//  не вычисляет второй агрумент функци test до тех пор, пока в этом не возникает необходимости.

const p = (arg) => arg;

const test = (x, y) => (x === 0 ? 0 : y);

console.log(test(0, p));