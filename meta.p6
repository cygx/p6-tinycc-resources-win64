my $*SPEC = IO::Spec::Unix;
print qq:to/EOF/;
\{
    "name"          : "TinyCC::Resources::Win64",
    "version"       : "0.1",
    "perl"          : "6.c",
    "author"        : "github:cygx",
    "license"       : "LGPL-2.1",
    "description"   : "Win64 build of the Tiny C Compiler",
    "repo-type"     : "git",
    "source-url"    : "git://github.com/cygx/p6-tinycc-resources-win64.git",
    "support"       : \{
        "bugtracker"    : "https://github.com/cygx/p6-tinycc-resources-win64/issues",
        "source"        : "https://github.com/cygx/p6-tinycc-resources-win64"
    },
    "depends"       : [ ],
    "provides"      : \{
        "TinyCC::Resources::Win64::DLL" : "lib/TinyCC/Resources/Win64/DLL.pm"
    },
    "resources"     : [
        { join ",\n        ", do gather 'resources'.IO.&(sub recur($_) {
            when .f { take .substr(10).perl }
            when .d { .&recur for .dir }
        }) }
    ]
}
EOF
