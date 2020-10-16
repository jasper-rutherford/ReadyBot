npm i

echo '{"readyAtList":[]}' > testReadyAtList.json
echo '{"readyAtList":[]}' > readyAtList.json

(
cat << END
{
    "token": "",
    "testToken": ""
}
END
) > config.json