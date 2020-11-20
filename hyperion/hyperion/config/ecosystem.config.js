const {addApiServer, addIndexer} = require("./definitions/ecosystem_settings");

module.exports = {
    apps: [
        addIndexer('bos'),
        addApiServer('bos', 1)
    ]
};
