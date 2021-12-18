#include <SFML/Graphics.hpp>
#include <iostream>
#include "Winx.hpp"


namespace katya
{

    wiinx::wiinx(sf::Texture Winx) 
    {
        
        m_winx = Winx;
        m_Bloom.setTexture(m_winx);
        m_Bloom.setPosition(10, 300);
    }

    wiinx::~wiinx() 
    {


    }
    
    void wiinx::Left() 
    {
        m_Bloom.move(-1.f, 0.f);
    }
    void wiinx::Right() 
    {
        m_Bloom.move(1.f, 0.f);
    }
    void wiinx::Up() 
    {
        m_Bloom.move(0.f, -1.f);
    }
    void wiinx::Down() 
    {
        m_Bloom.move(0.f, 1.f);
    }
    sf::Sprite wiinx::GetBloom() 
    {
        return (m_Bloom);
    }


}


