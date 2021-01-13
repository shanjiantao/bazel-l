## tutorial-2
这里我们使用自己的 rules_cc 封装 native.cc_binary, 并且让 BUILD 文件调用，涉及以下知识点

## bazel 寻址类型
可以看到，BUILD 文件在加载规则时，也使用了 bazel 寻址，截至目前为止，有两个地方使用了 bazel 寻址

1. 构建时
bazel build //src:hello-world

2. 导入规制时
load("//bzl:cc.bzl")

可以看到，bazel 寻址中的路径包括两种，第一种为 TARGET， 第二种为 FILE

## bazel 内置函数

我们用到了 native 这个内置的函数集，其实现了一些内置规则，内置规则都有哪些，还需要进一步学习。可以明确的时，这些 native 内置规则是 bazel 二进制文件提供的。
