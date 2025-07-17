FROM mcr.microsoft.com/dotnet/runtime:7.0
WORKDIR /app
COPY . .
EXPOSE 24454/udp
ENTRYPOINT ["./VoiceCraft.Server.exe"]
