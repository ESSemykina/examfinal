#pragma once
#include <SFML/Graphics.hpp>
#include <iostream>


namespace katya {
    class wiinx 
    {
    public:
        wiinx(sf::Texture Winx);
        


        ~wiinx();
        void Left();
        void Right();
        void Up();
        void Down();
        sf::Sprite GetBloom();


    private:
        sf::Sprite m_Bloom;
        sf::Texture m_winx;
    };

}

