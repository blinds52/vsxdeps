param($installPath, $toolsPath, $package, $project)

foreach ($reference in $project.Object.References)
{
	switch -regex ($reference.Name.ToLowerInvariant())
	{
	"^vslangproj100$"
		{
			$reference.CopyLocal = $false;
			$reference.EmbedInteropTypes = $false;
		}
	default
		{
			# ignore
		}
	}
}
