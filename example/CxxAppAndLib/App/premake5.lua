project "App"
	language "C++"
	kind "ConsoleApp"
	targetdir "../bin/%{cfg.buildcfg}_%{cfg.system}/%{prj.name}"

	files { "src/**.cc", "src/**.hh"}

includedirs
{
	"src",
	"../Lib/src"
}

links
{
	"Lib",
}
