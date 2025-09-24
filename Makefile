# Flutter Android Development Makefile

.PHONY: help setup clean get test analyze format build-debug build-release run doctor

help: ## Show this help message
	@echo 'Usage: make [target]'
	@echo ''
	@echo 'Targets:'
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  %-15s %s\n", $$1, $$2}' $(MAKEFILE_LIST)

setup: ## Setup development environment
	@echo "🚀 Setting up Flutter development environment..."
	flutter doctor
	flutter pub get

clean: ## Clean build files
	@echo "🧹 Cleaning build files..."
	flutter clean

get: ## Get Flutter dependencies
	@echo "📦 Getting Flutter dependencies..."
	flutter pub get

test: ## Run tests
	@echo "🧪 Running tests..."
	flutter test

analyze: ## Analyze code
	@echo "🔍 Analyzing code..."
	flutter analyze

format: ## Format code
	@echo "✨ Formatting code..."
	dart format .

build-debug: ## Build debug APK
	@echo "🏗️  Building debug APK..."
	flutter build apk --debug

build-release: ## Build release APK
	@echo "🏗️  Building release APK..."
	flutter build apk --release

build-bundle: ## Build Android App Bundle for Play Store
	@echo "📦 Building App Bundle..."
	flutter build appbundle --release

run: ## Run the app on connected device
	@echo "🚀 Running app..."
	flutter run

run-android: ## Run the app specifically on Android device
	@echo "🤖 Running app on Android..."
	flutter run -d android

devices: ## List connected devices
	@echo "📱 Connected devices:"
	flutter devices

doctor: ## Run Flutter doctor
	@echo "🏥 Running Flutter doctor..."
	flutter doctor

upgrade: ## Upgrade Flutter dependencies
	@echo "⬆️  Upgrading dependencies..."
	flutter pub upgrade

install: ## Install the debug APK on connected device
	@echo "📲 Installing debug APK..."
	flutter install