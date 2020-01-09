import 'package:flutter_masked_text/flutter_masked_text.dart';

class ImcBloc {
  var heightController = new MaskedTextController(mask: '0000');
  var weightController = new MaskedTextController(mask: '0000');

  var result = "Preencha os dados para calcular seu IMC";

  calculate() {
    double height = double.parse(heightController.text) / 100;
    double weight = double.parse(weightController.text);
    double imc = weight / (height * height);

    if (imc < 18.6) {
      result = "Abaixo do peso (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 18.6 && imc <= 24.9) {
      result = "Peso ideal (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 24.9 && imc <= 29.9) {
      result = "Levemente acima do peso (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 29.9 && imc <= 34.9) {
      result = "Obesidade Grau I (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 34.9 && imc <= 39.9) {
      result = "Obesidade Grau II (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 40) {
      result = "Obesidade Grau III (${imc.toStringAsPrecision(2)})";
    }
  }
}
