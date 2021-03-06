@echo on

@rem Compile a trivial service definition to C++

protoc -I%RECIPE_DIR% --plugin=protoc-gen-grpc=%LIBRARY_PREFIX%/bin/grpc_cpp_plugin.exe --grpc_out=. hello.proto || exit /B

if errorlevel 1 exit 1

if not exist hello.grpc.pb.h exit 1
if not exist hello.grpc.pb.cc exit 1

if not exist %PREFIX%\\Library\\lib\\address_sorting.lib exit 1
if not exist %PREFIX%\\Library\\lib\\gpr.lib exit 1
if not exist %PREFIX%\\Library\\lib\\grpc.lib exit 1
if not exist %PREFIX%\\Library\\lib\\grpc++.lib exit 1
