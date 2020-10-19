
//written by Josiah Vanevenhoven
module.exports = {
    name: 'readyAU',
    secret: false,
    description: "runs through the readyAtUntilList file and removes params",
    execute(params, bot)
    {
        const fs = require("fs");
        const filename = "readyAtUntilList.json";
        var datatemp = JSON.parse(fs.readFileSync(filename));

        var RAUO = 
        {
            RAUL: []
        }

        datatemp.RAUL.forEach(element => {
            if (element[0].includes(params))
            {
            }
            else
            {
                RAUO.RAUL.push(element);
            }
        });
        fs.writeFile(filename, JSON.stringify(RAUO), e =>
        {
            if (e) throw e;
        });
    }
}  