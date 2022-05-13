.PHONY: clean get gen

clean:
	@echo "Cleaning..."
	@flutter clean

get:
	@echo "Getting dependencies..."
	@flutter pub get

gen:
	@echo "Running codegen..."
	@flutter pub run build_runner build --delete-conflicting-outputs --release