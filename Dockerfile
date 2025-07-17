FROM mcr.microsoft.com/dotnet/runtime:7.0

WORKDIR /app

# Copy everything into the container
COPY . .

# Fix permission for any executable if needed
RUN chmod +x ./VoiceCraft.Server.dll || true

# Expose the proximity chat UDP port
EXPOSE 24454/udp

# Run with dotnet (safe for Linux)
ENTRYPOINT ["dotnet", "VoiceCraft.Server.dll"]
