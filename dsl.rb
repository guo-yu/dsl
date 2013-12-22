# @name: dsl
# @brief: a simple approach to create a DSL based on Ruby.
# @version: 0.0.1

class DSL
    # create instance
    def initialize(role)
        @role = role
    end
    # define custom methods
    # 如何在这里重新定义内核方法？
    def define(name)
        @name = yield
    end
    # method missing
    def method_missing(name, *args)
        role = @role[name]
        return eval("#{role} #{args}") if (role)
        super
    end
    # compile src file
    def compile(src)
        eval(src)
    end
end
