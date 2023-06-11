#include <fstream>
#include <iostream>
#include <string>

#include "../googletest/samples/sample1.h"

int main() {
  // Using the isPrime function, determine if numbers read from file have a twin
  // prime and write the result on file

  const std::string input_file = "input.txt";
  const std::string output_file = "output.txt";

  // Open input file
  std::ifstream input(input_file);
  if (!input) 
  {
    std::cout << "Error opening input file" << std::endl;
    return 1;
  }


  // Open output file
  std::ofstream output(output_file);
  if (!output) 
  {
    std::cout << "Error opening output file" << std::endl;
    return 1;
  }

  unsigned int x;

  while (input >> x) 
  {
    // Check whether x is a twin prime
    bool y = IsPrime(x) && (IsPrime(x + 2) || IsPrime(x - 2));
    // append 1 in the file if x is a twin prime, 0 otherwise
    output << y << std::endl;
  }

  // Close file streams
  input.close();
  output.close();

  std::cout << "All completed - exiting." << std::endl;

  return 0;
}


