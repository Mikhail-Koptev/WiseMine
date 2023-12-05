@echo off
title WiseMine Launcher
cd /d %AppData%\.minecraft
set dir=.
set nat=.\natives
set ast=.\assets
set lib=.\libraries
set java=%1
echo %java%
set memory=%2
set username=%3
set server=%4
if %server%==yes goto server
if %server%==no goto single

:server
%java% -Xms2048M -Xmx%memory%M -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M -XX:HeapDumpPath=MojangTricksIntelDriversForPerformance_javaw.exe.heapdump -Dminecraft.launcher.brand=wisemine-launcher -Dminecraft.launcher.version=1.0 -DFabricMcEmu="net.minecraft.client.main.Main" -Dlog4j.configurationFile="%ast%\log_configs\client-1.12.xml" -Djava.library.path="%nat%" -cp "%lib%\com\github\oshi\oshi-core\6.2.2\oshi-core-6.2.2.jar;%lib%\com\google\code\gson\gson\2.10\gson-2.10.jar;%lib%\com\google\guava\failureaccess\1.0.1\failureaccess-1.0.1.jar;%lib%\com\google\guava\guava\31.1-jre\guava-31.1-jre.jar;%lib%\com\ibm\icu\icu4j\71.1\icu4j-71.1.jar;%lib%\com\mojang\authlib\4.0.42\authlib-4.0.42.jar;%lib%\com\mojang\blocklist\1.0.10\blocklist-1.0.10.jar;%lib%\com\mojang\brigadier\1.1.8\brigadier-1.1.8.jar;%lib%\com\mojang\datafixerupper\6.0.8\datafixerupper-6.0.8.jar;%lib%\com\mojang\logging\1.1.1\logging-1.1.1.jar;%lib%\com\mojang\patchy\2.2.10\patchy-2.2.10.jar;%lib%\com\mojang\text2speech\1.17.9\text2speech-1.17.9.jar;%lib%\commons-codec\commons-codec\1.15\commons-codec-1.15.jar;%lib%\commons-io\commons-io\2.11.0\commons-io-2.11.0.jar;%lib%\commons-logging\commons-logging\1.2\commons-logging-1.2.jar;%lib%\io\netty\netty-buffer\4.1.82.Final\netty-buffer-4.1.82.Final.jar;%lib%\io\netty\netty-codec\4.1.82.Final\netty-codec-4.1.82.Final.jar;%lib%\io\netty\netty-common\4.1.82.Final\netty-common-4.1.82.Final.jar;%lib%\io\netty\netty-handler\4.1.82.Final\netty-handler-4.1.82.Final.jar;%lib%\io\netty\netty-resolver\4.1.82.Final\netty-resolver-4.1.82.Final.jar;%lib%\io\netty\netty-transport-classes-epoll\4.1.82.Final\netty-transport-classes-epoll-4.1.82.Final.jar;%lib%\io\netty\netty-transport-native-unix-common\4.1.82.Final\netty-transport-native-unix-common-4.1.82.Final.jar;%lib%\io\netty\netty-transport\4.1.82.Final\netty-transport-4.1.82.Final.jar;%lib%\it\unimi\dsi\fastutil\8.5.9\fastutil-8.5.9.jar;%lib%\net\java\dev\jna\jna-platform\5.12.1\jna-platform-5.12.1.jar;%lib%\net\java\dev\jna\jna\5.12.1\jna-5.12.1.jar;%lib%\net\sf\jopt-simple\jopt-simple\5.0.4\jopt-simple-5.0.4.jar;%lib%\org\apache\commons\commons-compress\1.21\commons-compress-1.21.jar;%lib%\org\apache\commons\commons-lang3\3.12.0\commons-lang3-3.12.0.jar;%lib%\org\apache\httpcomponents\httpclient\4.5.13\httpclient-4.5.13.jar;%lib%\org\apache\httpcomponents\httpcore\4.4.15\httpcore-4.4.15.jar;%lib%\org\apache\logging\log4j\log4j-api\2.19.0\log4j-api-2.19.0.jar;%lib%\org\apache\logging\log4j\log4j-core\2.19.0\log4j-core-2.19.0.jar;%lib%\org\apache\logging\log4j\log4j-slf4j2-impl\2.19.0\log4j-slf4j2-impl-2.19.0.jar;%lib%\org\joml\joml\1.10.5\joml-1.10.5.jar;%lib%\org\lwjgl\lwjgl-glfw\3.3.1\lwjgl-glfw-3.3.1.jar;%lib%\org\lwjgl\lwjgl-glfw\3.3.1\lwjgl-glfw-3.3.1-natives-windows.jar;%lib%\org\lwjgl\lwjgl-glfw\3.3.1\lwjgl-glfw-3.3.1-natives-windows-arm64.jar;%lib%\org\lwjgl\lwjgl-glfw\3.3.1\lwjgl-glfw-3.3.1-natives-windows-x86.jar;%lib%\org\lwjgl\lwjgl-jemalloc\3.3.1\lwjgl-jemalloc-3.3.1.jar;%lib%\org\lwjgl\lwjgl-jemalloc\3.3.1\lwjgl-jemalloc-3.3.1-natives-windows.jar;%lib%\org\lwjgl\lwjgl-jemalloc\3.3.1\lwjgl-jemalloc-3.3.1-natives-windows-arm64.jar;%lib%\org\lwjgl\lwjgl-jemalloc\3.3.1\lwjgl-jemalloc-3.3.1-natives-windows-x86.jar;%lib%\org\lwjgl\lwjgl-openal\3.3.1\lwjgl-openal-3.3.1.jar;%lib%\org\lwjgl\lwjgl-openal\3.3.1\lwjgl-openal-3.3.1-natives-windows.jar;%lib%\org\lwjgl\lwjgl-openal\3.3.1\lwjgl-openal-3.3.1-natives-windows-arm64.jar;%lib%\org\lwjgl\lwjgl-openal\3.3.1\lwjgl-openal-3.3.1-natives-windows-x86.jar;%lib%\org\lwjgl\lwjgl-opengl\3.3.1\lwjgl-opengl-3.3.1.jar;%lib%\org\lwjgl\lwjgl-opengl\3.3.1\lwjgl-opengl-3.3.1-natives-windows.jar;%lib%\org\lwjgl\lwjgl-opengl\3.3.1\lwjgl-opengl-3.3.1-natives-windows-arm64.jar;%lib%\org\lwjgl\lwjgl-opengl\3.3.1\lwjgl-opengl-3.3.1-natives-windows-x86.jar;%lib%\org\lwjgl\lwjgl-stb\3.3.1\lwjgl-stb-3.3.1.jar;%lib%\org\lwjgl\lwjgl-stb\3.3.1\lwjgl-stb-3.3.1-natives-windows.jar;%lib%\org\lwjgl\lwjgl-stb\3.3.1\lwjgl-stb-3.3.1-natives-windows-arm64.jar;%lib%\org\lwjgl\lwjgl-stb\3.3.1\lwjgl-stb-3.3.1-natives-windows-x86.jar;%lib%\org\lwjgl\lwjgl-tinyfd\3.3.1\lwjgl-tinyfd-3.3.1.jar;%lib%\org\lwjgl\lwjgl-tinyfd\3.3.1\lwjgl-tinyfd-3.3.1-natives-windows.jar;%lib%\org\lwjgl\lwjgl-tinyfd\3.3.1\lwjgl-tinyfd-3.3.1-natives-windows-arm64.jar;%lib%\org\lwjgl\lwjgl-tinyfd\3.3.1\lwjgl-tinyfd-3.3.1-natives-windows-x86.jar;%lib%\org\lwjgl\lwjgl\3.3.1\lwjgl-3.3.1.jar;%lib%\org\lwjgl\lwjgl\3.3.1\lwjgl-3.3.1-natives-windows.jar;%lib%\org\lwjgl\lwjgl\3.3.1\lwjgl-3.3.1-natives-windows-arm64.jar;%lib%\org\lwjgl\lwjgl\3.3.1\lwjgl-3.3.1-natives-windows-x86.jar;%lib%\org\slf4j\slf4j-api\2.0.1\slf4j-api-2.0.1.jar;%lib%\net\fabricmc\\tiny-mappings-parser\0.3.0+build.17\tiny-mappings-parser-0.3.0+build.17.jar;%lib%\net\fabricmc\sponge-mixin\0.12.5+mixin.0.8.5\sponge-mixin-0.12.5+mixin.0.8.5.jar;%lib%\net\fabricmc\tiny-remapper\0.8.2\tiny-remapper-0.8.2.jar;%lib%\net\fabricmc\access-widener\2.1.0\access-widener-2.1.0.jar;%lib%\org\ow2\asm\asm\9.6\asm-9.6.jar;%lib%\org\ow2\asm\asm-analysis\9.6\asm-analysis-9.6.jar;%lib%\org\ow2\asm\asm-commons\9.6\asm-commons-9.6.jar;%lib%\org\ow2\asm\asm-tree\9.6\asm-tree-9.6.jar;%lib%\org\ow2\asm\asm-util\9.6\asm-util-9.6.jar;%lib%\net\fabricmc\intermediary\1.20\intermediary-1.20.jar;%lib%\net\fabricmc\fabric-loader\0.14.24\fabric-loader-0.14.24.jar;%dir%\versions\fabric-loader-0.14.24-1.20\fabric-loader-0.14.24-1.20.jar" net.fabricmc.loader.impl.launch.knot.KnotClient --username %username% --quickPlayMultiplayer WiseMine.aternos.me:61580 --gameDir %dir% --assetsDir %ast% --assetIndex 5 --uuid null --accessToken null --userType mojang --version 1.20 --versionType release
exit

:single
%java% -Xms2048M -Xmx%memory%M -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M -XX:HeapDumpPath=MojangTricksIntelDriversForPerformance_javaw.exe.heapdump -Dminecraft.launcher.brand=wisemine-launcher -Dminecraft.launcher.version=1.0 -DFabricMcEmu="net.minecraft.client.main.Main" -Dlog4j.configurationFile="%ast%\log_configs\client-1.12.xml" -Djava.library.path="%nat%" -cp "%lib%\com\github\oshi\oshi-core\6.2.2\oshi-core-6.2.2.jar;%lib%\com\google\code\gson\gson\2.10\gson-2.10.jar;%lib%\com\google\guava\failureaccess\1.0.1\failureaccess-1.0.1.jar;%lib%\com\google\guava\guava\31.1-jre\guava-31.1-jre.jar;%lib%\com\ibm\icu\icu4j\71.1\icu4j-71.1.jar;%lib%\com\mojang\authlib\4.0.42\authlib-4.0.42.jar;%lib%\com\mojang\blocklist\1.0.10\blocklist-1.0.10.jar;%lib%\com\mojang\brigadier\1.1.8\brigadier-1.1.8.jar;%lib%\com\mojang\datafixerupper\6.0.8\datafixerupper-6.0.8.jar;%lib%\com\mojang\logging\1.1.1\logging-1.1.1.jar;%lib%\com\mojang\patchy\2.2.10\patchy-2.2.10.jar;%lib%\com\mojang\text2speech\1.17.9\text2speech-1.17.9.jar;%lib%\commons-codec\commons-codec\1.15\commons-codec-1.15.jar;%lib%\commons-io\commons-io\2.11.0\commons-io-2.11.0.jar;%lib%\commons-logging\commons-logging\1.2\commons-logging-1.2.jar;%lib%\io\netty\netty-buffer\4.1.82.Final\netty-buffer-4.1.82.Final.jar;%lib%\io\netty\netty-codec\4.1.82.Final\netty-codec-4.1.82.Final.jar;%lib%\io\netty\netty-common\4.1.82.Final\netty-common-4.1.82.Final.jar;%lib%\io\netty\netty-handler\4.1.82.Final\netty-handler-4.1.82.Final.jar;%lib%\io\netty\netty-resolver\4.1.82.Final\netty-resolver-4.1.82.Final.jar;%lib%\io\netty\netty-transport-classes-epoll\4.1.82.Final\netty-transport-classes-epoll-4.1.82.Final.jar;%lib%\io\netty\netty-transport-native-unix-common\4.1.82.Final\netty-transport-native-unix-common-4.1.82.Final.jar;%lib%\io\netty\netty-transport\4.1.82.Final\netty-transport-4.1.82.Final.jar;%lib%\it\unimi\dsi\fastutil\8.5.9\fastutil-8.5.9.jar;%lib%\net\java\dev\jna\jna-platform\5.12.1\jna-platform-5.12.1.jar;%lib%\net\java\dev\jna\jna\5.12.1\jna-5.12.1.jar;%lib%\net\sf\jopt-simple\jopt-simple\5.0.4\jopt-simple-5.0.4.jar;%lib%\org\apache\commons\commons-compress\1.21\commons-compress-1.21.jar;%lib%\org\apache\commons\commons-lang3\3.12.0\commons-lang3-3.12.0.jar;%lib%\org\apache\httpcomponents\httpclient\4.5.13\httpclient-4.5.13.jar;%lib%\org\apache\httpcomponents\httpcore\4.4.15\httpcore-4.4.15.jar;%lib%\org\apache\logging\log4j\log4j-api\2.19.0\log4j-api-2.19.0.jar;%lib%\org\apache\logging\log4j\log4j-core\2.19.0\log4j-core-2.19.0.jar;%lib%\org\apache\logging\log4j\log4j-slf4j2-impl\2.19.0\log4j-slf4j2-impl-2.19.0.jar;%lib%\org\joml\joml\1.10.5\joml-1.10.5.jar;%lib%\org\lwjgl\lwjgl-glfw\3.3.1\lwjgl-glfw-3.3.1.jar;%lib%\org\lwjgl\lwjgl-glfw\3.3.1\lwjgl-glfw-3.3.1-natives-windows.jar;%lib%\org\lwjgl\lwjgl-glfw\3.3.1\lwjgl-glfw-3.3.1-natives-windows-arm64.jar;%lib%\org\lwjgl\lwjgl-glfw\3.3.1\lwjgl-glfw-3.3.1-natives-windows-x86.jar;%lib%\org\lwjgl\lwjgl-jemalloc\3.3.1\lwjgl-jemalloc-3.3.1.jar;%lib%\org\lwjgl\lwjgl-jemalloc\3.3.1\lwjgl-jemalloc-3.3.1-natives-windows.jar;%lib%\org\lwjgl\lwjgl-jemalloc\3.3.1\lwjgl-jemalloc-3.3.1-natives-windows-arm64.jar;%lib%\org\lwjgl\lwjgl-jemalloc\3.3.1\lwjgl-jemalloc-3.3.1-natives-windows-x86.jar;%lib%\org\lwjgl\lwjgl-openal\3.3.1\lwjgl-openal-3.3.1.jar;%lib%\org\lwjgl\lwjgl-openal\3.3.1\lwjgl-openal-3.3.1-natives-windows.jar;%lib%\org\lwjgl\lwjgl-openal\3.3.1\lwjgl-openal-3.3.1-natives-windows-arm64.jar;%lib%\org\lwjgl\lwjgl-openal\3.3.1\lwjgl-openal-3.3.1-natives-windows-x86.jar;%lib%\org\lwjgl\lwjgl-opengl\3.3.1\lwjgl-opengl-3.3.1.jar;%lib%\org\lwjgl\lwjgl-opengl\3.3.1\lwjgl-opengl-3.3.1-natives-windows.jar;%lib%\org\lwjgl\lwjgl-opengl\3.3.1\lwjgl-opengl-3.3.1-natives-windows-arm64.jar;%lib%\org\lwjgl\lwjgl-opengl\3.3.1\lwjgl-opengl-3.3.1-natives-windows-x86.jar;%lib%\org\lwjgl\lwjgl-stb\3.3.1\lwjgl-stb-3.3.1.jar;%lib%\org\lwjgl\lwjgl-stb\3.3.1\lwjgl-stb-3.3.1-natives-windows.jar;%lib%\org\lwjgl\lwjgl-stb\3.3.1\lwjgl-stb-3.3.1-natives-windows-arm64.jar;%lib%\org\lwjgl\lwjgl-stb\3.3.1\lwjgl-stb-3.3.1-natives-windows-x86.jar;%lib%\org\lwjgl\lwjgl-tinyfd\3.3.1\lwjgl-tinyfd-3.3.1.jar;%lib%\org\lwjgl\lwjgl-tinyfd\3.3.1\lwjgl-tinyfd-3.3.1-natives-windows.jar;%lib%\org\lwjgl\lwjgl-tinyfd\3.3.1\lwjgl-tinyfd-3.3.1-natives-windows-arm64.jar;%lib%\org\lwjgl\lwjgl-tinyfd\3.3.1\lwjgl-tinyfd-3.3.1-natives-windows-x86.jar;%lib%\org\lwjgl\lwjgl\3.3.1\lwjgl-3.3.1.jar;%lib%\org\lwjgl\lwjgl\3.3.1\lwjgl-3.3.1-natives-windows.jar;%lib%\org\lwjgl\lwjgl\3.3.1\lwjgl-3.3.1-natives-windows-arm64.jar;%lib%\org\lwjgl\lwjgl\3.3.1\lwjgl-3.3.1-natives-windows-x86.jar;%lib%\org\slf4j\slf4j-api\2.0.1\slf4j-api-2.0.1.jar;%lib%\net\fabricmc\\tiny-mappings-parser\0.3.0+build.17\tiny-mappings-parser-0.3.0+build.17.jar;%lib%\net\fabricmc\sponge-mixin\0.12.5+mixin.0.8.5\sponge-mixin-0.12.5+mixin.0.8.5.jar;%lib%\net\fabricmc\tiny-remapper\0.8.2\tiny-remapper-0.8.2.jar;%lib%\net\fabricmc\access-widener\2.1.0\access-widener-2.1.0.jar;%lib%\org\ow2\asm\asm\9.6\asm-9.6.jar;%lib%\org\ow2\asm\asm-analysis\9.6\asm-analysis-9.6.jar;%lib%\org\ow2\asm\asm-commons\9.6\asm-commons-9.6.jar;%lib%\org\ow2\asm\asm-tree\9.6\asm-tree-9.6.jar;%lib%\org\ow2\asm\asm-util\9.6\asm-util-9.6.jar;%lib%\net\fabricmc\intermediary\1.20\intermediary-1.20.jar;%lib%\net\fabricmc\fabric-loader\0.14.24\fabric-loader-0.14.24.jar;%dir%\versions\fabric-loader-0.14.24-1.20\fabric-loader-0.14.24-1.20.jar" net.fabricmc.loader.impl.launch.knot.KnotClient --username %username% --gameDir %dir% --assetsDir %ast% --assetIndex 5 --uuid null --accessToken null --userType mojang --version 1.20 --versionType release
exit
