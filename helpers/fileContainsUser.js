module.exports = {
    name: 'fileContainsUser',
    secret: false,
    description: "checks a file to see ifspecified user is in it",
    execute(params, bot)
    {
        const fs = require('fs');
        filename = params[0];
        user = params[1];
        //check to see if the user is in the file
        var x = false;
        if (fs.existsSync(filename)) {
            var data = JSON.parse(fs.readFileSync(filename));
            data.userList.forEach(element => {
                if (element[1].localeCompare(user[1]) == 0)
                {
                    x = true;
                }
            });
        }
        return x;
    }
}  