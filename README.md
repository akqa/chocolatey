Chocolatey
----------
Chocolatey NuGet is a Machine Package Manager, somewhat like apt-get, but built with Windows in mind.
![Chocolatey](http://stash.akqa.net/projects/GDO/repos/chocolatey/browse/nugetlogo.png?at=e38167cf22f85bb171897b41b9044015bc43e3b3&raw "Image of NUGET")

http://chocolatey.org/

This repo contains packages created by AKQA. If you would like to add your own package follow 
the instructions below but first check if you can find the package on http://chocolatey.org/packages

Instructions derived https://github.com/chocolatey/chocolatey/wiki/CreatePackages

Install Chocolatey
------------------
 * Start a commmand prompt
 
		@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%systemdrive%\chocolatey\bin

Install warmup & templates
--------------------------
 * Start powershell
 
		cinst warmup
		
 * Restart powershell
 
		warmup addTextReplacement __CHOCO_PKG_OWNER_NAME__ "AKQA"
		warmup addTextReplacement __CHOCO_PKG_OWNER_REPO__ "AKQA"
		warmup addTextReplacement __CHOCO_AUTO_PKG_OWNER_REPO__ "AKQA"
		git clone https://github.com/chocolatey/chocolateytemplates.git
		cd chocolateytemplates\_templates
		warmup addTemplateFolder chocolatey "%cd%\chocolatey"
		warmup addTemplateFolder chocolatey3 "%cd%\chocolatey3"
		warmup addTemplateFolder chocolateyauto "%cd%\chocolateyauto"
		warmup addTemplateFolder chocolateyauto3 "%cd%\chocolateyauto3"
		
 * You are now ready to create you first package
 
Creating a package
------------------
 * Get the AKQA chocolatey library

		
 * Create your package folder for example NUnit would be warmup chocolatey3 nunint

		warmup chocolatey3 <<__PACKAGENAME__>>
		
 * This will have createdls a folder called nunit which will contain 3 folders (nunit, nunit.install, nunit.portable)
 * Go to the install directory i.e. nunit.install

		cd nunit.install
		
 * edit the nuspec file replacing all the items that say __REPLACE__
 * Got the tools folders
 
		cd tools
		
 * edit the chocolateyInstall.ps1 file with the URL for the exe,msi download and silent arguments
 * remove all the comments
 * go back to the root directory
 
		cd ..
		
 * create a package which will produce a .nupkg file
 
		cpack
		
 * upload package to http://chocolatey.org
 
