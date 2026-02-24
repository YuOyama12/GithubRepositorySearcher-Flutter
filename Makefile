clean:
	fvm flutter clean

rebuild:
	@make clean
	fvm flutter pub get

gen:
	@make rebuild
	fvm dart run build_runner build --delete-conflicting-outputs