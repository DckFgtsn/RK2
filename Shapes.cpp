#include <iostream>
#include <string>
#include <memory>

namespace ShapesExample {

    class IDrawAPI{//TODO
    public:
        virtual void drawCircle(int radius, int x, int y) = 0;
    };

    class RedCircleDrawer : public IDrawAPI{
    public:
        virtual void drawCircle(int radius, int x, int y) override{
            std::cout<< "Drawing Circle[ color: red, radius: "<< radius << ", x: " << x << ", " << y << "]" << std::endl;
        }
    };

    class GreenCircleDrawer : public IDrawAPI{
    public:
        virtual void drawCircle(int radius, int x, int y) override{
            std::cout<< "Drawing Circle[ color: green, radius: "<< radius << ", x: " << x << ", " << y << "]" << std::endl;
        }
    };

    class Shape{
    protected:
        std::unique_ptr<IDrawAPI> m_api;

        Shape(std::unique_ptr<IDrawAPI> api) : m_api { std::move(api) } {}
    public:
        void setImplementor(std::unique_ptr<IDrawAPI> api){
            m_api = std::move(api);
        }

        virtual void draw() = 0;
    };

    class Circle : public Shape {
    private:
        int m_x;
        int m_y;
        int m_radius;

    public:
        Circle(int x, int y, int radius, std::unique_ptr<IDrawAPI> api)
                : Shape{ std::move(api) }, m_x{ x }, m_y{ y }, m_radius{ radius } { }

        virtual void draw() override{
            m_api->drawCircle(m_radius, m_x, m_y);
        }
    };

    static void clientCode01(){
        std::unique_ptr<IDrawAPI> redCircleDrawer {
                std::make_unique<RedCircleDrawer>()
        };

        std::unique_ptr<IDrawAPI> greenCircleDrawer {
                std::make_unique<GreenCircleDrawer>()
        };

        std::shared_ptr<Shape> circle {
                std::make_shared<Circle>(100, 10, 20, std::move(redCircleDrawer))
        };

        circle->draw();
        circle->setImplementor(std::move(greenCircleDrawer));
        circle->draw();
    }

    static void clientCode02(){
        std::unique_ptr<IDrawAPI> redCircleDrawer {
                std::make_unique<RedCircleDrawer>()
        };

        std::unique_ptr<IDrawAPI> greenCircleDrawer {
                std::make_unique<GreenCircleDrawer>()
        };

        std::shared_ptr<Shape> redCircle {
                std::make_shared<Circle>(100, 10, 20, std::move(redCircleDrawer))
        };

        std::shared_ptr<Shape> greenCircle {
                std::make_shared<Circle>(200, 30, 40, std::move(greenCircleDrawer))
        };

        redCircle->draw();
        greenCircle->draw();
    }
}

void test_shapes_example(){
    using namespace ShapesExample;
    clientCode01();
    clientCode02();
}
