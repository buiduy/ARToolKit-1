------------------------------------------------------------------------------
-- Project
------------------------------------------------------------------------------
project "AR"
--language "C"
language "C++"
--kind "StaticLib"
kind "SharedLib"
--kind "ConsoleApp"
--kind "WindowedApp"

flags {
}
files {
    "include/**.h",
    "src/AR/*.c",
    "src/Gl/gsub.c",
    "src/Gl/gsub_lite.c",
    "src/Gl/gsubutil.c",
    "src/VideoWin32DirectShow/videoWin32DirectShow.cpp",
    "src/ARMulti/*.c",
    "src/ARMulti/*.cpp",
}
defines {
    "_WIN32_WINNT=0x0500",
    "LIBAR_EXPORTS",
}
includedirs {
    "include",
    "../dsvl",
    "../streams",
    "../glut",
}
buildoptions {
}
libdirs {
}
links {
    "DSVL",
    "tinyxml",
    "strmbase",

    "strmiids",
    "winmm",
    "Quartz",
}
configuration "Debug"
do
    links {
        "comsuppwd",
    }
end

configuration "Release"
do
    links {
        "comsuppw",
    }
end

