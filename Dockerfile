FROM mcr.microsoft.com/dotnet/runtime:7.0
WORKDIR /app
COPY . .

# 🔧 Add execute permission to your .exe file
RUN chmod +x VoiceCraft.Server.exe

EXPOSE 24454/udp
ENTRYPOINT ["./VoiceCraft.Server.exe"]
