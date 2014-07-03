require "../dsl"

HelloLang = DSL.new({
    :hello => "puts"
})

my_script = <<STR
    hello 'my_new_lang'
    hello 'xiangyibei'
STR

HelloLang.compile(my_script) # => hello 'my_new_lang'