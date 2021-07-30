project "glad"
	kind "StaticLib"
	language "C"
	staticruntime "on"

	targetdir ("bin/" .. outputdir )
	objdir ("obj/" .. outputdir )

	files
	{
		"include/glad/glad.h",
		"include/khr/khrplatform.h",
		"src/glad.c",
		"./premake5.lua"
	}
    
    includedirs
    {
        "include"
	}
	filter "system:windows"
		systemversion "latest"
	filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"