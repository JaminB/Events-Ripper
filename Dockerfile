FROM ubuntu:18.04
ADD . /Events-Ripper
RUN dpkg --add-architecture i386 && apt-get update && apt-get install -y --no-install-recommends perl wine-stable wine32 wget winetricks ca-certificates unixodbc:i386 libsqliteodbc:i386
RUN winetricks -q vcrun6sp6
RUN cd && wget https://download.microsoft.com/download/f/f/1/ff1819f9-f702-48a5-bbc7-c9656bc74de8/LogParser.msi && msiexec /i LogParser.msi /qn
RUN echo 'Copy "C:\\Program Files\\Log Parser 2.2\\LogParser.exe" C:\\Windows\\System32' | wine cmd
WORKDIR /work

