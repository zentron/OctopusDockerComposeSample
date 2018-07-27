param([string]$Environment) 

if($Environment -eq "") {
	$Environment="local"
} else {
	mv .\.env .\.env.old
	mv .\$Environment.env .\.env
}
$ProjectName="MyApp-$Environment"

docker-compose --project-name $ProjectName up --detach --force-recreate 