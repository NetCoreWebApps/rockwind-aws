FROM microsoft/dotnet:2.0-sdk
COPY web /web
ADD https://github.com/NetCoreWebApps/Rockwind.Aws/blob/master/app/web.settings /web/web.settings
WORKDIR /web
EXPOSE 5000/tcp
ENV ASPNETCORE_URLS https://*:5000
ENTRYPOINT ["dotnet", "/web/app.dll"]