LLVM 18.1.8

编译方法:
SSea>mkdir build && cd build
SSea\build>cmake -G "Visual Studio 17 2022" -DLLVM_DIR="D:\Program Files\LLVM\lib\cmake\llvm" -DCMAKE_BUILD_TYPE=Release ..
#到这一步后，如果使用的不是vs2019环境，则需要将ObfuscationPlugin.vcxproj中所有的"C:\Program Files (x86)\Microsoft Visual Studio\2019"替换为"C:\Program Files\Microsoft Visual Studio\2022"。
SSea\build>cmake --build . --config Release

#clang编译时有一定概率会失败，多试几次就好，很奇怪，暂时没有发现原因
clang -fpass-plugin=./build/Release/ObfuscationPlugin.dll -O0 test.c -o test.exe

#opt玩法
opt -load-pass-plugin=./build/Debug/ObfuscationPlugin.dll -passes=obfuscation test.ll -S -o test_obf.ll
clang test_obf.ll -o test_obf.exe
