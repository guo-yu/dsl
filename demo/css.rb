require "../dsl"

Less = DSL.new({
    :class => 'lessClass'
})

Less.define 'lessClass' do
    
end

less = <<STR
    
    color = '#efefef';
    alert = 'red';

    class 'hello'

STR

Less.compile(abc)
