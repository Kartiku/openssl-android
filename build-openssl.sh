#!/bin/bash
export PATH=$(echo -n $ANDROID_NDK/toolchains/llvm/prebuilt/*/bin):$PATH
./Configure android-arm64 no-asm
make clean build_libs AR="llvm-ar" RANLIB="llvm-ranlib" CC=x86_64-linux-android21-clang CFLAG="-fPIC -DOPENSSL_THREADS -D_REENTRANT -DDSO_DLFCN -DHAVE_DLFCN_H -D__ANDROID_API__=21 -Os -fomit-frame-pointer -Wall -I$ANDROID_NDK_ROOT/sysroot/usr/include -I$ANDROID_NDK_ROOT/sysroot/usr/include/i686-linux-android"
#mkdir -p x86/lib x86/include/openssl
#cp lib*.a x86/lib
#cp include/openssl/* x86/include/openssl
