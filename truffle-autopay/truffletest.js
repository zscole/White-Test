var SimpleStorage = artifacts.require('./SimpleStorage.sol')
module.exports = function(callback) {
  // perform actions

  		var wallet_addr_list = [
  			'0x2191eF87E392377ec08E7c08Eb105Ef5448eCED5',
  			'0x0F4F2Ac550A1b4e2280d04c21cEa7EBD822934b5',
  			'0x6330A553Fc93768F612722BB8c2eC78aC90B3bbc',
  			'0x5AEDA56215b167893e80B4fE645BA6d5Bab767DE'
  		]


  		// SimpleStorage.deployed().then(function(instance){ return instance.sayHello()}).then(function(result){console.log(result);});



 		setInterval(function() {



 			var balance = web3.eth.getBalance(wallet_addr_list[3]);
 			var balance_eth = parseInt(balance);


 			if (balance_eth <= 99000000000000000000){
 				wallet_addr_list_0 = wallet_addr_list[0]
 				wallet_addr_list.shift();   
			    wallet_addr_list.push(wallet_addr_list_0);
 			}

 			SimpleStorage.deployed().then(function(instance){ return instance.sayHello(wallet_addr_list[3])}).then(function(result){console.log("address: " + result);});



 			web3.eth.sendTransaction({from:wallet_addr_list[3], to:wallet_addr_list[0], value: 100000000000000000}, (err,res)=>{
	       if(err) {
	           console.log(err);
	       } else {
	           console.log(res);
		       }
	   		})

 			web3.eth.sendTransaction({from:wallet_addr_list[3], to:wallet_addr_list[1], value: 100000000000000000}, (err,res)=>{
	       if(err) {
	           console.log(err);
	       } else {
	           console.log(res);
		       }
	   		})

 			 web3.eth.sendTransaction({from:wallet_addr_list[3], to:wallet_addr_list[2], value: 100000000000000000}, (err,res)=>{
	       if(err) {
	           console.log(err);
	       } else {
	           console.log(res);
		       }
	   		})


   		}, 1000)		

}