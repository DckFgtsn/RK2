#include <iostream>
#include <memory>

namespace ConceptualExampleBridge02 {

    class Implementor{
    public:
        virtual ~Implementor() {}

        virtual std::string operationImplementation() const = 0;
    };

    class ConcreteImplementationA : public Implementor{
    public:
        virtual std::string operationImplementation() const override{
            return "ConcreteImplementationA: Here's the result on the platform A.";
        }
    };

    class ConcreteImplementationB : public Implementor{
    public:
        virtual std::string operationImplementation() const override{
            return "ConcreteImplementationB: Here's the result on the platform B.";
        }
    };

    class Abstraction{
    protected:
        std::shared_ptr<Implementor> m_implementor;

    public:
        Abstraction(std::shared_ptr<Implementor> implementor) : m_implementor{implementor} {}

        virtual ~Abstraction() {}

        virtual std::string Operation() const{
            return "Abstraction: Base operation with:\n" +
                   m_implementor->operationImplementation();
        }
    };

    class ExtendedAbstraction : public Abstraction{
    public:
        ExtendedAbstraction(std::shared_ptr<Implementor> implementor)
                : Abstraction{ implementor } {}

        virtual std::string Operation() const override{
            return "ExtendedAbstraction: Extended operation with:\n" +
                   m_implementor->operationImplementation();
        }
    };

    static void clientCode(std::shared_ptr<Abstraction> abstraction){
        // ...
        std::cout << abstraction->Operation() << std::endl;
        // ...
    }
}

int test_conceptual_example_02(){
    using namespace ConceptualExampleBridge02;

    std::shared_ptr<Implementor> implementor1{ std::make_shared<ConcreteImplementationA>() };
    std::shared_ptr<Abstraction> abstraction1{ std::make_shared<Abstraction>(implementor1) };
    clientCode(abstraction1);
    std::cout << std::endl;

    std::shared_ptr<Implementor> implementor2{ std::make_shared<ConcreteImplementationB>() };
    std::shared_ptr<Abstraction> abstraction2{ std::make_shared<ExtendedAbstraction>(implementor2) };
    clientCode(abstraction2);
    return 0;
}
