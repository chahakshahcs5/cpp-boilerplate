#include <fmt/core.h>
#include "app/hello.hpp"

int main() {
    fmt::print("Using fmt with Conan 🎉\n");
    std::string greetMessage =  greet("Chahak");
    fmt::print(greetMessage);

    return 0;
}