AZUREPAT=$AZUREPAT
AZUSERNAME=$AZUSERNAME
AZUSER_EMAIL=$AZUSER_EMAIL
AZORG=$AZORG
git clone https://github.com/azizyksl/Git-Deneme
cd Git-Deneme
rm -rf .git

cd ..

GIT_CMD_REPOSITORY="https://$AZUSERNAME:$AZUREPAT@dev.azure.com/$AZORG/Git-Deneme/_git/Git-Deneme"
git clone $GIT_CMD_REPOSITORY

cp -r Git-Deneme/* Git-Deneme/

cd Git-Deneme

git config --global user.email "$AZUSER_EMAIL"
git config --global user.name "$AZUSERNAME"

git add .
git commit -m "sync from git to azure"

git push
