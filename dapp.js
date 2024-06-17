
//ERROR [meta mask not opening..]

document.addEventListener("DOMContentLoaded", function() {
            if (window.ethereum) {
                ethereum.request({ method: "eth_requestAccounts" })
                .then((accounts) => {
                    console.log('Accounts:', accounts);
                })
                .catch((error) => {
                    console.error('Error requesting accounts:', error);
                });
            } else {
                console.error('MetaMask is not installed');
            }
        });
