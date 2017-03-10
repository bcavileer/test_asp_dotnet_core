FROM microsoft/aspnetcore:1.0.4
WORKDIR /app
COPY build ./
ENTRYPOINT ["dotnet", "mvc.dll"]
