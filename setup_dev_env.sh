#!/bin/bash
# Flutter Android Development Environment Setup Script

echo "🚀 Setting up Flutter Android Development Environment..."

# Check if Flutter is installed
if command -v flutter &> /dev/null; then
    echo "✅ Flutter is already installed"
    flutter --version
else
    echo "❌ Flutter is not installed. Please install Flutter from https://flutter.dev/docs/get-started/install"
    echo "   After installation, add Flutter to your PATH and run this script again."
    exit 1
fi

# Check Flutter doctor
echo ""
echo "🔍 Running Flutter Doctor to check environment..."
flutter doctor

# Get dependencies
echo ""
echo "📦 Getting Flutter dependencies..."
flutter pub get

# Check Android setup
echo ""
echo "🤖 Checking Android setup..."
flutter doctor --android-licenses || echo "⚠️  You may need to accept Android licenses"

# Build the app
echo ""
echo "🏗️  Building Android app..."
flutter build apk --debug

echo ""
echo "✅ Setup complete! You can now:"
echo "   • Run 'flutter run' to start the app on a connected device/emulator"
echo "   • Run 'flutter doctor' to check for any remaining setup issues"
echo "   • Run 'flutter pub get' to update dependencies"