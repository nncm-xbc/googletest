#include "../googlemock/test/gmock_all_test.cc"
#include "../googletest/include/gtest/gtest.h"

#include <iostream>

int main() {
  std::cout << "Running tests...\n";

  testing::InitGoogleMock();
  return RUN_ALL_TESTS();
}