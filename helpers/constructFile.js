const { randomBytes } = require('crypto');
const { Message } = require('discord.js');

module.exports = {
    name: 'constructFile',
    secret: false,
    description: "Turns args into a file directory string",
    execute(params, bot) {
        const fs = require('fs');
        //converts the arguments into a single 'name'
        var create = false;
        var temp = [];
        if (params[params.length-1] == 'CREATE')
        {
            create = true;
            params.forEach(element => {
                if (element.localeCompare('CREATE') != 0)
                {
                    temp.push(element);
                }
            });
            params = temp;
        }
        var name = params.join(' ');
        var data = JSON.parse(fs.readFileSync('partyarchive.json'));
        var returnfile = "";
        exists = false;
        
        var wrapper2 = {
            partyList: []
        }

        data.partyList.forEach(element => {
            if (element[1].localeCompare(name) == 0)
            {
                exists = true;
                returnfile = element[0]
            }
            wrapper2.partyList.push(element);
        });
        //turns 'name' into a file directory
        if (exists) {
            return ("parties/" + returnfile + ".json");
        }
        else {
            var num = Math.floor(Math.random() * 999999999);
            while (fs.existsSync("parties/" + num + ".json")) {
                num = Math.floor(Math.random() * 999999999);
            }
            if (create)
            {
                var party = [num,name];
                wrapper2.partyList.push(party);
            }
            fs.writeFile(("partyarchive.json"), JSON.stringify(wrapper2), e => {
                if (e) throw e;
            });
            return ("parties/" + num + ".json");
        }
    }
}  