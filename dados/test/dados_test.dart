import 'package:dados/pessoa.dart';
import 'package:test/test.dart';

void main() {
  group('Pessoa', () {
    test('calcularIMC', () {
      var pessoa = Pessoa('Nome', 70.0, 1.75);

      
      expect(pessoa.calcularIMC(),
          closeTo(22.86, 0.01)); 
    });

    
  });
}

