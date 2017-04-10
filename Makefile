release:
	git tag ${TAG} master
	git push origin master
	git push origin ${TAG}
	docker build -t kurioapps/apib-tool:latest .
	docker tag kurioapps/apib-tool:latest kurioapps/apib-tool:${TAG}
	docker push kurioapps/apib-tool:latest
	docker push kurioapps/apib-tool:${TAG}
