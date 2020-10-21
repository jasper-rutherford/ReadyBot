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
            var data = fs.readFileSync(filename, 'utf8');
            data = data.substring(1, data.length - 1);
            y = 0;
            while (y < data.split(" : ").length) {
                if (data.split(" : ")[y].localeCompare(user) == 0) {
                    x = true;
                }
                y++;
            }
        }
        return x;
    }
}  