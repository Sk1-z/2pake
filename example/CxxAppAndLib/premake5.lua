-- premake5 script generated by 2pake
workspace "CxxApp"

configurations { "debug" }
configurations { "release" }
platforms { "windows" }
platforms { "linux" }
platforms { "mac" }

	filter { "configurations:debug" }
		defines { "DEBUG" }
		runtime "Debug"

	filter { "configurations:release" }
		defines { "RELEASE" }
		runtime "Release"
		optimize "On"

	filter { "platforms:windows" }
		defines { "WINDOWS" }
		system "windows"


	filter { "platforms:linux" }
		defines { "LINUX" }
		system "linux"


	filter { "platforms:mac" }
		defines { "MAC" }
		system "macosx"


group "App"
	include "App/premake5.lua"
group ""

group "Lib"
	include "Lib/premake5.lua"
group ""
