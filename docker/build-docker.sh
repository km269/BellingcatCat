VERSION='0.0.1'
cp ../../schemas/bellingcatcat.json ./
docker build . -t equill/bellingcatcat:$VERSION -t equill/bellingcatcat:latest
rm bellingcatcat.json
