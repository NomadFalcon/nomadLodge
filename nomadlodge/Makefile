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
	@fvm flutter clean
	@fvm flutter pub get
	@cd ios && rm -rf Pods Podfile.lock && pod install --repo-update

resolve:
	@fvm flutter pub get

upgrade:
	@fvm flutter pub upgrade

generated:
	@fvm flutter packages pub run build_runner build --delete-conflicting-outputs

generated_watch:
	@fvm flutter packages pub run build_runner watch --delete-conflicting-outputs

dependency_validator:
	@fvm flutter pub run dependency_validator

analyze:
	@fvm dart run barkeep analyze

test:
	@fvm flutter test


integrate: resolve dependency_validator analyze test

asset_bundles:
	@fvm flutter pub run asset_bundler pack --input ./asset_bundles/secure --output ../lumina_cdn/redist/secure --package secure --secure
	@fvm flutter pub run asset_bundler pack --input ./asset_bundles/localization --output ../lumina_cdn/redist/localization --package localization
	@fvm flutter pub run asset_bundler pack --input ./asset_bundles/resources --output ../lumina_cdn/redist/resources --package resources

app_icon:
	@fvm flutter pub run flutter_launcher_icons:main

upgrade_locks: upgrade clean dependency_validator analyze test
	git commit -am "chore: upgrade locks"

splash_images:
	@fvm flutter pub run flutter_native_splash:create
