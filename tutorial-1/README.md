## tutorial-1

## 1. 项目结构
本节是一个最小的 bazel 项目示例,首先看一下项目结构
```
├── README.md
├── src
│   ├── BUILD
│   └── hello-world.c
└── WORKSPACE
```
可以看到由一个 WORKSPACE，BUILD 和 hello-world.c 文件组成。

## 2. 使用 Bazel 编译
运行 ```bazel build //src:hello-world```,等待构建完成后会生成四个文件夹，生成的二进制将位于 bazel-bin/src/hello-world

通过本例，你应该了解的有:
1. WORKSPACE 文件的作用
2. BUILD 文件的作用
3. //src:hello-world 寻找编译目标的方式
4. cc_binary 是什么，为什么可以直接使用

