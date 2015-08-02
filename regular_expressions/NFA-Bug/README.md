Stackoverflow question: [Has “syntax case ignore” changed from vim 7.3 to vim 7.4?](http://stackoverflow.com/questions/23102607)

Compare the two behaviours on a pre built vim 7.04 with

`gvim -u NONE test_1.no-no "+source test_1.vim"`

and

`gvim -u NONE test_1.no-no "+source test_1_set_regexpengine.vim"`
