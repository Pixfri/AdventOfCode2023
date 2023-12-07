set_xmakever("2.8.1")

set_project("AdventOfCode2023")
set_version("1.0.0")

set_allowedplats("windows", "linux", "macosx")
set_allowedarchs("windows|x64", "linux|x64", "macosx|x86_64")

add_rules("mode.debug", "mode.release")
add_rules("plugin.vsxmake.autoupdate")
set_languages("cxx20")
set_optimize("fastest")

local outputdir = "$(mode)-$(os)-$(arch)"

target("Day01")
    set_kind("binary")
    
    set_targetdir("build/" .. outputdir .. "/Day01/bin")
    set_objectdir("build/" .. outputdir .. "/Day01/obj")

    -- C++ source files
    add_files("Day01/Source/**.cpp")

    -- C++ Headers
    add_includedirs("Day01/Include")
    add_headerfiles("Day01/Include/**.hpp", "Day01/Include/**.h")