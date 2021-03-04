# Habit Quokka
Strength or growth good habits with additional motivation to discover images hidden behind closed windows.

## Installation
To build this project you will need [fvm](https://pub.dev/packages/fvm) first. Install it by calling:
```base
pub global activate fvm
```
Then in project directory call
```base
fvm install
```

## Generate Files
Auto-generated files are not included in the repository, so you have to build them first:
```bash
./generate.sh
```

## Run
Right now, this project only supports Flutter Web. To run the it, call:
```bash
fvm flutter run -d chrome
```

## Sort Imports
To sort import and auto format a code run:
```bash
./sort_imports.sh
```
