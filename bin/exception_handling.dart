// Define a custom exception class
class DivisionByZeroException implements Exception {
  String errorMessage() {
    return 'Error: Division by zero is not allowed.';
  }
}

double divide(int numerator, int denominator) {
  // Check for division by zero and throw a custom exception if necessary
  if (denominator == 0) {
    throw DivisionByZeroException();
  }
  return numerator / denominator;
}

void main() {
  int numerator = 10;
  int denominator = 0;

  try {
    // Attempt the division
    double result = divide(numerator, denominator);
    print('The result is $result');
  } on DivisionByZeroException catch (e) {
    // Handle the custom exception
    print(e.errorMessage());
  } catch (e) {
    // Handle any other exceptions that might occur
    print('An unexpected error occurred: $e');
  } finally {
    // This block is always executed
    print('Division attempt completed.');
  }
}
