#include <iostream>
#include <memory>

namespace ConceptualExampleBridge01 {

    class Implementor{
    public:
        virtual void concreteOperation() = 0;
    };

    class Abstraction{
    protected:
        std::shared_ptr<Implementor> m_implementor;

    public:
        void setImplementor(std::shared_ptr<Implementor> implementor){
            m_implementor = implementor;
        }
        virtual void operation() = 0;
    };

    class RefinedAbstraction : public Abstraction{
    public:
        virtual void operation() override{
            m_implementor->concreteOperation();
        }
    };

    class ConcreteImplementor : public Implementor{
    public:
        virtual void concreteOperation() override{
            std::cout << "Concrete Implementor's Operation" << std::endl;
        }
    };

    static void clientCode(std::shared_ptr<Abstraction> abstraction) {
        // ...
        abstraction->operation();
        // ...
    }
}

int test_conceptual_example_01(){
    using namespace ConceptualExampleBridge01;

    std::shared_ptr<Abstraction> abstraction {
            std::make_shared<RefinedAbstraction>()
    };

    abstraction->setImplementor(std::make_shared<ConcreteImplementor>());

    clientCode(abstraction);
    return 0;
}
