# Use official .NET runtime for Linux
FROM mcr.microsoft.com/dotnet/runtime:7.0

# Create app directory
WORKDIR /app

# Copy all files into the container
COPY . .

# Expose the UDP port used by VoiceCraft
EXPOSE 24454/udp

# (No need to chmod .dll — dotnet handles it)
# Start the server
ENTRYPOINT ["dotnet", "VoiceCraft.Server.dll"]
