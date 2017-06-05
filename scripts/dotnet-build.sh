#!/bin/bash
source="--source https://api.nuget.org/v3/index.json --source https://www.myget.org/F/photoalbum/api/v3/index.json --no-cache"
cd ../
projects=(PhotoAlbum)
for project in ${projects[*]}
do
	echo ========================================================
	echo Building project: $project
	echo ========================================================
	dotnet build $project/$project.csproj
done
