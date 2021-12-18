#include <SFML/Graphics.hpp>
#include <thread>
#include <chrono>
#include <iostream>
#include "Winx.hpp"
#pragma comment(linker, "/SUBSYSTEM:windows /ENTRY:mainCRTStartup")


using namespace std::chrono_literals;
int main()
{


    sf::RenderWindow window(sf::VideoMode(700, 400), "WINX!");

    sf::Texture texture;
    if (!texture.loadFromFile("img/back.jpg"))
    {
        std::cout << "ERROR when loading back.jpg" << std::endl;
        return false;
    }

    sf::Sprite back;
    back.setTexture(texture);


    sf::Texture Winx;
    Winx.loadFromFile("img/winx.png");

    katya::wiinx wiinx(Winx);

   

    while (window.isOpen())
    {
        sf::Event event;
        while (window.pollEvent(event))
        {
            
            if (event.type == sf::Event::Closed)
                window.close();
        }

        if (sf::Keyboard::isKeyPressed(sf::Keyboard::Left))
        {            
                wiinx.Left();
        }

        
        if (sf::Keyboard::isKeyPressed(sf::Keyboard::Right))
        {
            
            wiinx.Right();
        }
        if (sf::Keyboard::isKeyPressed(sf::Keyboard::Up))
        {

            wiinx.Up();
        }
        if (sf::Keyboard::isKeyPressed(sf::Keyboard::Down))
        {
            wiinx.Down();
        }


        window.clear();
        window.draw(back);
        window.draw(wiinx.GetBloom());


        window.display();

        std::this_thread::sleep_for(5ms);
        
    }


    return 0;
}
