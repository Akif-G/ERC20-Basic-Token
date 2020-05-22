# An ERC20 token Implementation & A standart Exchange algorithm

Hi! This is an ERC20 token implementation as a template which can be used as reference. Also I implemented an Exchange that can swap coins after validations are given. So, here we will go through the usage of them with an example.
> **Although it is not restricted, This implementations are not recommended for commercial usage.**

# An Example of Exchange with 2 tokens
## Description of The Problem

In this example we will implement an ERC20 tokens, which are described as digital assets that is validated with a series of rules. These rules are stand for standardized functions. After creating our first ERC20 Token with a specific names, in my case it will be MehmetGultekinToken (MGT), we are going to deploy a second one and also name it specifically, in my case it will be GultekinMehmetToken (GMT).

#### Setup of Creator address:

![](https://lh6.googleusercontent.com/a1IaZEtQD7SRFJusm0XAhwaph0RJvsb2cAYBVv2oK-0VWqWBOXBEbRl-8bde68D-S9l9auNh_Vt76hcsEES4K4fS49OULJz437aCLmKwzTcZm4w3F1cS9KWZgmeuecYOP1pPgyv4)

#### transfer Function:

![](https://lh6.googleusercontent.com/9yG3rZpUV7t2S24m-F0iJRDeO0t9HGKEl0yElgCiQcL3QkRHcuoOyx4w97iD2nMgfBF7d6uyFLdRQzgyPsL-178ucjBEBj-ver9z611Q3_ZPiPqOXXGQSWs3eZNTmGOwFW7bg9gv)

## Creating ERC20 Tokens

In this stage, we are going to create two ERC20 token with specified functions that we implemented in our template code.


### First ERC20 Token: MGT

First of all; since there is specified functions for creating the tokens and we will use them more than once, we need to consider creating the tokens code as a template. This template’ constructor can create a token with specific inputs from deployer account. This inputs will be Token’s name, Token’s symbol and amount of the total supply. Since this contract is not recommended for commercial usage we do not need to consider the decimals and just go with the integers.

A standard interface allows any tokens on Ethereum to be re-used by other applications: from wallets to decentralized exchanges. [This standard interface contains the public functions](https://eips.ethereum.org/EIPS/eip-20):

-   Optional functions that is used for getting name and symbol of token as string, without input: name() and symbol()
    
-   Function that will return the total supply: totalSupply()
    
-   Function that will return the amount of tokens that is owned by an address: balanceOf(address _owner)
    
-   2 transfer function which can be used by Customer or Delegate, if allowed by Customer : transfer(address _to, uint256 _value) and transferFrom(address _from, address _to, uint256 _value)
    
-   Allowance function that validates an address, Exchange contract for example, for usage of the tokens of Customer for given amount: approve(address _spender, uint256 _value)

-   function that checks allowance: allowance(address _owner, address _spender)
    

After the implementation of these functions, there can be more functions added for Customer usage or Internal processes, but we will stick the template version of given ERC20 token procedure.

  
### Deploying first ERC20 Token:MGT

In this operation, we will deploy our first ERC20 token. While deploying the Tokens we will use our Ropsten Test Network address at Metamask as ”Creator Account” of them. Creator will hold the token’s and responsible for distribution of it between Customers. It will also Deploy the contract of exchange.

  

Creator’s Address:

-   [0xc92fa93A19b6aCeEC73e0a8BaaF7Ba7672210BB4](https://ropsten.etherscan.io/address/0xc92fa93A19b6aCeEC73e0a8BaaF7Ba7672210BB4)
    

  

The address of the first Token’ Contract (MGT):

-   [0xdc3442c606678dca7a8bc91c7e2ee5afdf90a4e4](https://ropsten.etherscan.io/address/0xdc3442c606678dca7a8bc91c7e2ee5afdf90a4e4)
    

  

After Deploying the contract we gave our Customer 100 Token to spent.

Customer’s Address:

-   [0x8926762E5f9FEB4F7e8350945Bf69dB20f3aCBe0](https://ropsten.etherscan.io/address/0x8926762E5f9FEB4F7e8350945Bf69dB20f3aCBe0)
    
### Deploying the second ERC20 Token: GMT

We used the same contract code, and specified the name, symbol and total Supply like we wanted. We used the same creator for the second time.

  

The address of the second Token’s Contract (GMT):

    
-   [0x0deb0de1a48d15367d2ee0522384757117b9cf37](https://ropsten.etherscan.io/address/0x0deb0de1a48d15367d2ee0522384757117b9cf37)
    
  

After Deploying the contract we gave our Customer 200 Token to spent.

The initial look from Creator of the contracts and Mehmet Gultekin as a Customer.

![](https://lh6.googleusercontent.com/0bPw1Iz-N_hgafE_VTOPRB7z8NTmz-K8qLgB0Kvlu9AUvxJ26MNdWdadGGaoBTjqQ1IGYKpECkRzA5cKNQ97QUeVI4t-IEVEJ8XhmE2IVSZ3uRQZcq9SPMv6aNJpHtLpEa4SOyJT)![](https://lh6.googleusercontent.com/X2Dpn8iROHAkNan4J0MCRgKUlW6mZJKOE1jXJHUv5vNr-wwjWXT3pOhdAvJLnKaw6qLf3ZdBS9zCNr93UV3dWIMeeiDlDma5vmyJOcv-uONyDCksg1YZtD0dJUum-1gixd478hbN)

  
## Creating an Exchange Contract

Secondly, we need to implement an exchange contract that uses any given 2 tokens and swaps the given amount between tokens. Since we can not create new tokens after initial state we will use Creator’s address as House and give permission from him to the both of the Tokens. In this stage, of course, anyone with a balance in both Tokens could act like a House and deploy the Exchange Contract, but we wanted to keep things easy.

There is 3 function:

-   2 function that returns the addresses of exchange contract and House. This functions are for easiness for the usage of Allowance function and validation stages. Preferred.
    
-   A function that takes two ERC20 token addresses (from_addrs and to_addrs) and an integer value, amount. If the balances hold, the function converts from_addrs tokens to to_addrs tokens: transfer(address from_addrs, address to_addrs, uint256 amount)
    

After the implementation we deployed this Contract on Ropsten test network.

  

The address of the exchange contract:

-   [0x7137de873b95937658e78ad2e01adcc57226e607](https://ropsten.etherscan.io/address/0x7137de873b95937658e78ad2e01adcc57226e607)
    

  

After deploying the contract House needs to give approval to the exchange contract, in both requested Tokens, in our case them will be MGT and GMT. The approvals are given via Metamask.

  
  

![](https://lh3.googleusercontent.com/aq5UF7v-WNXE-zoPvX1tSniw2h9dUA_FNyDpnX-e7x_sE7I-sobUqrCfrhunsim0ZL8D8k0A1YaATKAqkzvGnCApYTm5-V8xxeJEE30HvWbgZVpW7esVZlTO3UFKwTc0diA7Hl58)  ![](https://lh3.googleusercontent.com/leODF7AZICTTKWVH7BSzTjwpSBSlTOILB3BUsG8wU5QBxZYZYhHf5bIhhnGsjHs1fO5mp_SJS7RVmLXMLFOq9ZsExAOSt8INOKqoT8ykieW77gwOovmil-Xe2WPgTpb4v9rocSzA)

  
  
  
  

### Using the Transfer Function as a Customer

After the Creator deployed it, we will use the transfer function of Exchange contract as a Customer. Firstly we will transfer 10 tokens from MGT (MehmetGultekinToken) to GMT (GultekinMehmetToken).

Firstly we need to give the exchange Contract an approval via token’ contracts, since it will spent MGT. We gave an permission for 10 tokens:

![](https://lh4.googleusercontent.com/n4LnSr1eDjyVG0PLJPkuyEpxOPuoELE5tuBjABRkDQmWC9Mz3hPUbWNN5vZS0hEOtyMN4yJDAuJFtaTdFgxHx1Mfrp1A0q13thh2f_r0JKlTr9l4aVcdQI6JWjYAc9Sifh71Laxo)

  

Secondly, we can use transfer function of the Contract without hesitation. After this process the balances of Creator (as House) and the Customer (as Mehmet Gultekin) will be:

![](https://lh4.googleusercontent.com/jl1Lot27gIuuTWrFzboN51ABL2mo0Y3WJ4Gpfbd3FU_PkLzNTfjUv_tkVyzHOvpA1pUUaDxKpJjpA5uF4WWdEO-R5czrKRhqTr3BxvhMxtoDrbK498dYJLdWG4KZoMu3T6V9Dz6d)![](https://lh4.googleusercontent.com/hiJ4NMmDranfUH-WBw-953uKJmPMzACZbfIgqz0mbJrbOIESX1alEZmRESC9MQ3g5JIxsylQEZaiCidp9W8tQq_p3qMh_5ml3Oc6eCmZRrfCyVQ7L6HRn0AazKyfEr46Ivh4Mjae)

  

 ## Conclusion

We implemented an ERC2O Token contract as a template and deployed 2 different Tokens, MehmetGultekinToken (MGT) and GultekinMehmetToken (GMT). After that, we implemented an Exchange contract and Deployed it. After giving the permissions it was ready to use!
