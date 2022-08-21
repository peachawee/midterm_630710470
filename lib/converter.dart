class Converter {
  double? result;

  Converter() {
    result = 0;
  }

  double CtoF(double temp) {
    result = ((9/5)*temp)+32;
    return result!;
  }

  double FtoC(double temp) {
    result = (5/9)*(temp-32);
    return result!;
  }

  double KtoC(double temp) {
    result = temp-273;
    return result!;
  }

  double CtoK(double temp) {
    result = temp+273;
    return result!;
  }

  double FtoK(double temp) {
    result = (5/9)*(temp-32) + 273;
    return result!;
  }

  double KtoF(double temp) {
    result = (9/5)*(temp-273) + 32;
    return result!;
  }





}