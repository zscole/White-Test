module.exports = {
  networks: {
    development: {
      host: 'localhost',
      port: 7545,
      from: "0x821aEa9a577a9b44299B9c15c88cf3087F3b5544",
      network_id: '*', // Match any network id
      gas: 4700000
    }
  },
  solc: {
    optimizer: {
      enabled: true,
      runs: 200
    }
  }
}
