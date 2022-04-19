run:
	flutter run
open:
	open -a Simulator
format:
	flutter format lib
	flutter format test
install:
	flutter pub get
testing:
	flutter test
setup:
	cp scripts/pre-commit.sh .git/hooks/pre-commit