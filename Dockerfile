FROM microsoft/dotnet:2.1-sdk
COPY app /app
WORKDIR /app
RUN dotnet tool install -g web
EXPOSE 5000/tcp
ENV ASPNETCORE_URLS http://*:5000
ENTRYPOINT ["web", "/app/app.settings"]
