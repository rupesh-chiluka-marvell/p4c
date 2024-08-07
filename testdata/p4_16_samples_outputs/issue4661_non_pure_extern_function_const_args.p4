#include <core.p4>

extern void foo();
extern void bar();
extern bit<8> baz();
action a() {
}
action b() {
}
control c() {
    table t {
        actions = {
            a;
            b;
        }
    }
    apply {
        switch (baz()) {
            1: {
                foo();
            }
            4: {
                bar();
            }
        }
        t.apply();
    }
}

control C();
package top(C c);
top(c()) main;
