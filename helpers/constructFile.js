const { randomBytes } = require('crypto');

module.exports = {
    name: 'constructFile',
    secret: false,
    description: "Turns args into a file directory string",
    execute(params, bot) {
        const fs = require('fs');
        //converts the arguments into a single 'name'
        name = '';
        while (params.length > 0) {
            name += " " + params.shift();
        }
        var name = name.substring(1);
        var temp = fs.readFileSync("partyarchive.json", 'utf8').substring(1, fs.readFileSync("partyarchive.json", 'utf8').length - 1)
        var data = temp.split(" : ");
        var c = 0;
        exists = false;
        while (c < data.length) {
            if (data[c].includes(name)) {
                exists = true;
                break;
            }
            c++;
        }
        //turns 'name' into a file directory
        if (exists) {
            return ("parties/" + data[c].split(", ")[0].toLowerCase() + ".json");
        }
        else {
            var num = Math.floor(Math.random() * 999999999);
            while (fs.existsSync("parties/" + num + ".json")) {
                num = Math.floor(Math.random() * 999999999);
            }
            if (temp.localeCompare('') == 0) {
                fs.writeFile(("partyarchive.json"), JSON.stringify(fs.readFileSync("partyarchive.json", 'utf8').substring(1, fs.readFileSync("partyarchive.json", 'utf8').length - 1) + num + ", " + name), e => {
                    if (e) throw e;
                });
            }
            else {
                fs.writeFile(("partyarchive.json"), JSON.stringify(fs.readFileSync("partyarchive.json", 'utf8').substring(1, fs.readFileSync("partyarchive.json", 'utf8').length - 1) + " : " + num + ", " + name), e => {
                    if (e) throw e;
                });
            }
            return ("parties/" + num + ".json");
        }
    }
}  