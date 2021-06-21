# Openssl for android

How to build openssl for android on WSL

1. Get latest 1.x.x ndk from https://developer.android.com/ndk/downloads.  Currently is 1.1.1k
2. Extract to this folder
3. Set `ANDROID_NDK` variable to the extracted folder
4. Set current directory to the extracted folder and run `../build-openssl.sh`
