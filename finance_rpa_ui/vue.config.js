module.exports = {
  transpileDependencies: [
    'vuetify'
  ],
  pluginOptions: {
    electronBuilder: {
      builderOptions: {
        "appId": "finance_rpa",
        "win": {
          "icon": "public/rpa_16_256.ico"
        },
        "extraResources": {
          "from": "./resources/extraResources",
          "to": "extraResources"
        }
      },
      externals: ['iconv-lite']
    }
  }
}
