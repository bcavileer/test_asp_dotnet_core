dotnet restore
dotnet publish --output ./build
docker build -t test_mvc .
docker run --rm -p 8000:80 test_mvc

gem install bundler
bundle
cucumber
