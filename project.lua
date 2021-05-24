
project "imgui"
configurations { "Debug", "Release" }

kind "StaticLib"

architecture "x64"
language "C++"
characterset ("MBCS")

-- Set Directories
targetdir ("../" .. flBinPath)
debugdir ("../" .. flBinPath)
objdir ("../" .. flBuildsPath .. "/output/%{cfg.platform}_%{cfg.buildcfg}")
symbolspath '$(OutDir)$(TargetName).pdb'

includedirs { "./" }

-- Project Files
files { "*.cpp", "*.h", "*.inl" , "*.natvis" }
files { "**.natvis" }
