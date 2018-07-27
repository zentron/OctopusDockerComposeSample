$Environment="#{Octopus.Environment.Name}"

if($Environment -eq "#{Octopus.Environment.Name}") {
	$Environment="local"
} else {
	mv .\.env .\.env.old
	mv .\$Environment.env .\.env
}
$ProjectName="MyApp-$Environment"

docker-compose --force-recreate --project-name $ProjectName up --detach 