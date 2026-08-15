# HelloWorld

Java 控制台入门项目。`src/Main.java` 的 `main` 方法向控制台顺序打印几行欢迎语。

## 环境

- **JDK 17**：已安装在 `C:\Users\wanfei\jdk-17\jdk-17.0.20+8`，并已加入用户级 `JAVA_HOME` / `PATH`
  （Eclipse Temurin 17.0.20，通过清华 TUNA 镜像 ZIP 免装方式部署）
- 版本控制：Git（主干分支 `main`）

## 编译与运行

源码文件为 **UTF-8 编码**。在 Windows 中文环境下，`javac` 默认用 **GBK** 读取源码，
若不显式指定编码，中文字符会在编译期被写坏（运行时出现 `锛孉` 这类乱码）。

**因此编译必须带 `-encoding UTF-8`。**

### 方式一：一键脚本（推荐）

```bat
build.bat
```

脚本会自动 `chcp 65001` 切换控制台到 UTF-8，用 `javac -encoding UTF-8` 编译，并运行程序。

### 方式二：手动（PowerShell / cmd）

```powershell
chcp 65001                              # 控制台切到 UTF-8
javac -encoding UTF-8 src/Main.java     # 关键：显式指定 UTF-8 读取源码
java -cp src Main
```

> 注意：编译产物 `Main.class` 已被 `.gitignore` 忽略，不会进入版本库。

## 预期输出

```
Hello World!
This is a Test!
This is a Git!
Hello,Workbuddy!
Hello，AI Viber Coding
```

## 仓库

GitHub：https://github.com/wanfei1978/HelloWorld
