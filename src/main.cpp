#include <iostream>

/**
 * Add two numbers.
 */
int add(int a, int b) {
    return a + b;
}

int main() {
    int a, b;
    std::cin >> a >> b;

    if (!std::cin.good()) {
        std::cout << "Error\n";
        return 1;
    }

    std::cout << add(a, b) << '\n';
    return 0;
}
