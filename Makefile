# Invoking Runway

test:
	pipenv run runway test
	
plan:
	pipenv run runway plan

deploy-common:
	DEPLOY_ENVIORNMENT=common pipenv run runway deploy
	
deploy-demo:
	DEPLOY_ENVIORNMENT=demo pipenv run runway deploy
	
deploy-flux:
	DEPLOY_ENVIORNMENT=flux pipenv run runway deploy
	