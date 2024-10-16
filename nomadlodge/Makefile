SHELL := /bin/bash

.PHONY: \
	clean \
	resolve \
	update \
	generated \
	generated_watch \
	dependency_validator \
	analyze \
	test \
	changelog \
	qa_changelog \
	integrate \
	docs \
	asset_bundles \
	app_icon \
	splash_images

clean:
	@flutter clean
	@flutter pub get
	@cd ios && rm -rf Pods Podfile.lock && pod install --repo-update

resolve:
	@flutter pub get

upgrade:
	@flutter pub upgrade

generated:
	@flutter packages pub run build_runner build --delete-conflicting-outputs

generated_watch:
	@flutter packages pub run build_runner watch --delete-conflicting-outputs

dependency_validator:
	@flutter pub run dependency_validator

analyze:
	@dart run barkeep analyze

test:
	@flutter test


integrate: resolve dependency_validator analyze test

asset_bundles:
	@flutter pub run asset_bundler pack --input ./asset_bundles/secure --output ../lumina_cdn/redist/secure --package secure --secure
	@flutter pub run asset_bundler pack --input ./asset_bundles/localization --output ../lumina_cdn/redist/localization --package localization
	@flutter pub run asset_bundler pack --input ./asset_bundles/resources --output ../lumina_cdn/redist/resources --package resources

app_icon:
	@flutter pub run flutter_launcher_icons:main

upgrade_locks: upgrade clean dependency_validator analyze test
	git commit -am "chore: upgrade locks"

splash_images:
	@flutter pub run flutter_native_splash:create

start_server_dev:
	cd nomadlodge_backend/nomadlodge_backend_server && docker compose up --build --detach && dart bin/main.dart 
end_server_dev:
	cd nomadlodge_backend/nomadlodge_backend_server && docker compose down -v
run_backend:
	cd nomadlodge_backend/nomadlodge_backend_flutter && flutter run