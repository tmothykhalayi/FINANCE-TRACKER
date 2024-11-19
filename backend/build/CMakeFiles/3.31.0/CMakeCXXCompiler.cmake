set(CMAKE_CXX_COMPILER "C:/Program Files (x86)/Falcon/MinGW/bin/c++.exe")
set(CMAKE_CXX_COMPILER_ARG1 "")
set(CMAKE_CXX_COMPILER_ID "GNU")
set(CMAKE_CXX_COMPILER_VERSION "4.4.1")
set(CMAKE_CXX_COMPILER_VERSION_INTERNAL "")
set(CMAKE_CXX_COMPILER_WRAPPER "")
set(CMAKE_CXX_STANDARD_COMPUTED_DEFAULT "98")
set(CMAKE_CXX_EXTENSIONS_COMPUTED_DEFAULT "ON")
set(CMAKE_CXX_STANDARD_LATEST "11")
set(CMAKE_CXX_COMPILE_FEATURES "cxx_std_98;cxx_template_template_parameters;cxx_std_11;cxx_auto_type;cxx_decltype;cxx_default_function_template_args;cxx_defaulted_functions;cxx_deleted_functions;cxx_extern_templates;cxx_func_identifier;cxx_generalized_initializers;cxx_inline_namespaces;cxx_long_long_type;cxx_right_angle_brackets;cxx_rvalue_references;cxx_sizeof_member;cxx_static_assert;cxx_strong_enums;cxx_trailing_return_types;cxx_unicode_literals;cxx_uniform_initialization;cxx_variadic_macros;cxx_variadic_templates")
set(CMAKE_CXX98_COMPILE_FEATURES "cxx_std_98;cxx_template_template_parameters")
set(CMAKE_CXX11_COMPILE_FEATURES "cxx_std_11;cxx_auto_type;cxx_decltype;cxx_default_function_template_args;cxx_defaulted_functions;cxx_deleted_functions;cxx_extern_templates;cxx_func_identifier;cxx_generalized_initializers;cxx_inline_namespaces;cxx_long_long_type;cxx_right_angle_brackets;cxx_rvalue_references;cxx_sizeof_member;cxx_static_assert;cxx_strong_enums;cxx_trailing_return_types;cxx_unicode_literals;cxx_uniform_initialization;cxx_variadic_macros;cxx_variadic_templates")
set(CMAKE_CXX14_COMPILE_FEATURES "")
set(CMAKE_CXX17_COMPILE_FEATURES "")
set(CMAKE_CXX20_COMPILE_FEATURES "")
set(CMAKE_CXX23_COMPILE_FEATURES "")
set(CMAKE_CXX26_COMPILE_FEATURES "")

set(CMAKE_CXX_PLATFORM_ID "MinGW")
set(CMAKE_CXX_SIMULATE_ID "")
set(CMAKE_CXX_COMPILER_FRONTEND_VARIANT "GNU")
set(CMAKE_CXX_SIMULATE_VERSION "")




set(CMAKE_AR "C:/Program Files (x86)/Falcon/MinGW/bin/ar.exe")
set(CMAKE_CXX_COMPILER_AR "CMAKE_CXX_COMPILER_AR-NOTFOUND")
set(CMAKE_RANLIB "C:/Program Files (x86)/Falcon/MinGW/bin/ranlib.exe")
set(CMAKE_CXX_COMPILER_RANLIB "CMAKE_CXX_COMPILER_RANLIB-NOTFOUND")
set(CMAKE_LINKER "C:/Program Files (x86)/Falcon/MinGW/bin/ld.exe")
set(CMAKE_LINKER_LINK "")
set(CMAKE_LINKER_LLD "")
set(CMAKE_CXX_COMPILER_LINKER "ld")
set(CMAKE_CXX_COMPILER_LINKER_ID "GNU")
set(CMAKE_CXX_COMPILER_LINKER_VERSION 2.20.51.20100613)
set(CMAKE_CXX_COMPILER_LINKER_FRONTEND_VARIANT GNU)
set(CMAKE_MT "")
set(CMAKE_TAPI "CMAKE_TAPI-NOTFOUND")
set(CMAKE_COMPILER_IS_GNUCXX 1)
set(CMAKE_CXX_COMPILER_LOADED 1)
set(CMAKE_CXX_COMPILER_WORKS TRUE)
set(CMAKE_CXX_ABI_COMPILED TRUE)

set(CMAKE_CXX_COMPILER_ENV_VAR "CXX")

set(CMAKE_CXX_COMPILER_ID_RUN 1)
set(CMAKE_CXX_SOURCE_FILE_EXTENSIONS C;M;c++;cc;cpp;cxx;m;mm;mpp;CPP;ixx;cppm;ccm;cxxm;c++m)
set(CMAKE_CXX_IGNORE_EXTENSIONS inl;h;hpp;HPP;H;o;O;obj;OBJ;def;DEF;rc;RC)

foreach (lang IN ITEMS C OBJC OBJCXX)
  if (CMAKE_${lang}_COMPILER_ID_RUN)
    foreach(extension IN LISTS CMAKE_${lang}_SOURCE_FILE_EXTENSIONS)
      list(REMOVE_ITEM CMAKE_CXX_SOURCE_FILE_EXTENSIONS ${extension})
    endforeach()
  endif()
endforeach()

set(CMAKE_CXX_LINKER_PREFERENCE 30)
set(CMAKE_CXX_LINKER_PREFERENCE_PROPAGATES 1)
set(CMAKE_CXX_LINKER_DEPFILE_SUPPORTED )

# Save compiler ABI information.
set(CMAKE_CXX_SIZEOF_DATA_PTR "4")
set(CMAKE_CXX_COMPILER_ABI "")
set(CMAKE_CXX_BYTE_ORDER "LITTLE_ENDIAN")
set(CMAKE_CXX_LIBRARY_ARCHITECTURE "")

if(CMAKE_CXX_SIZEOF_DATA_PTR)
  set(CMAKE_SIZEOF_VOID_P "${CMAKE_CXX_SIZEOF_DATA_PTR}")
endif()

if(CMAKE_CXX_COMPILER_ABI)
  set(CMAKE_INTERNAL_PLATFORM_ABI "${CMAKE_CXX_COMPILER_ABI}")
endif()

if(CMAKE_CXX_LIBRARY_ARCHITECTURE)
  set(CMAKE_LIBRARY_ARCHITECTURE "")
endif()

set(CMAKE_CXX_CL_SHOWINCLUDES_PREFIX "")
if(CMAKE_CXX_CL_SHOWINCLUDES_PREFIX)
  set(CMAKE_CL_SHOWINCLUDES_PREFIX "${CMAKE_CXX_CL_SHOWINCLUDES_PREFIX}")
endif()





set(CMAKE_CXX_IMPLICIT_INCLUDE_DIRECTORIES "C:/Program Files (x86)/Falcon/MinGW/lib/gcc/mingw32/4.4.1/include/c++;C:/Program Files (x86)/Falcon/MinGW/lib/gcc/mingw32/4.4.1/include/c++/mingw32;C:/Program Files (x86)/Falcon/MinGW/lib/gcc/mingw32/4.4.1/include/c++/backward;C:/Program Files (x86)/Falcon/MinGW/include;C:/Program Files (x86)/Falcon/MinGW/lib/gcc/mingw32/4.4.1/include;C:/Program Files (x86)/Falcon/MinGW/lib/gcc/mingw32/4.4.1/include-fixed")
set(CMAKE_CXX_IMPLICIT_LINK_LIBRARIES "stdc++;mingw32;gcc;moldname;mingwex;user32;kernel32;advapi32;shell32;mingw32;gcc;moldname;mingwex")
set(CMAKE_CXX_IMPLICIT_LINK_DIRECTORIES "C:/Program Files (x86)/Falcon/MinGW/lib/gcc/mingw32/4.4.1;C:/Program Files (x86)/Falcon/MinGW/lib/gcc;C:/Program Files (x86)/Falcon/MinGW/lib")
set(CMAKE_CXX_IMPLICIT_LINK_FRAMEWORK_DIRECTORIES "")
set(CMAKE_CXX_COMPILER_CLANG_RESOURCE_DIR "")

set(CMAKE_CXX_COMPILER_IMPORT_STD "")

