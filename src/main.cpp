#include <iostream>

bool input(char c){
    std::cin >>c;

    switch (c){
        case 'w':
            return true;
    }
}

int main(){
    const char* map[] = {
        "##############",
            "#        _   #",
            "#       |_|  #",
            "#            #",
            "#            #",
            "#            #",
            "#            #",
            "#      P     #",
            "#            #",
            "##############"
    };

    int size = sizeof(map) / sizeof(map[0]);

    for (int i = 0; i < size; i++)
    {
        std::cout << map[i] << '\n';
    }
}