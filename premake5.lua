---@diagnostic disable: undefined-global, undefined-field

local projectName = path.getbasename(os.getcwd())

project (projectName)
  kind "StaticLib"
  language "C++"

	targetdir ("%{wks.location}/bin/" .. Outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. Outputdir .. "/%{prj.name}")

  files {
    "**.h"
  }

  IncludedirsDep[projectName] = os.getcwd()
  -- Linklib[projectName] = projectName
