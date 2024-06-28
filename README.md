# Degen-Token-ERC-20

## Project Overview
Degen Token is an ERC-20 token designed to power the reward system for Degen Gaming, a game studio aiming to take gaming to the next level. The token allows players to earn rewards, transfer tokens to others, redeem tokens for in-game items, and burn tokens when they are no longer needed. The token contract is deployed on the Avalanche network, providing fast and low-fee transactions for an enhanced gaming experience.

## Getting Started

### Prerequisites
##### Connecting MetaMask to the Avalanche Test Network

Install the MetaMask browser extension if you haven't already: https://metamask.io.

Click on the MetaMask extension icon in your browser toolbar to open the MetaMask popup.

If you already have a MetaMask account, click on your account name and select "Import Account" to import your Avalanche testnet account using the mnemonic phrase.

If you don't have a MetaMask account, click on "Create a Wallet" and follow the instructions to create a new account using your Avalanche testnet mnemonic phrase.

Once you are logged in to MetaMask, click on the network dropdown (mainnet by default).

Select "Custom RPC" and enter the Avalanche Fuji Testnet RPC URL:

Network Name: Avalanche Fuji Testnet

New RPC URL: https://api.avax-test.network/ext/bc/C/rpc

Chain ID: 43113

Symbol: AVAX

Block Explorer URL: https://cchain.explorer.avax-test.network/

Now, you should be connected to the Avalanche test network in MetaMask.

#### Verifying the Contract on Snowtrace

To verify the Degen Token contract on Snowtrace, you will need the following information:

Contract Address: The address where the Degen Token contract is deployed on the Avalanche network.

Contract Source Code: The source code of the Degen Token contract.

Go to the Snowtrace verification page: https://www.snowtrace.io/verify.

#### remix setup

Open the Remix IDE in your web browser at https://remix.ethereum.org/.

In the Remix IDE, navigate to the "File Explorer" panel on the left side.

Select the "Connect to Localhost" option from the available workspaces.

Switch to the "Solidity Compiler" tab located on the right side.

Under the "Compiler Configuration" section, select the appropriate compiler version matching the one used in the DegenToken contract (e.g., 0.8.0).

Click the "Compile Game.sol" button to compile the contract.

After successful compilation, switch to the "Deploy & Run Transactions" tab.

Under the "Environment" dropdown, select "Injected Web3" to connect Remix to MetaMask.

Click the "Deploy" button next to the contract name (Game).

In the contract deployment section, specify the desired values for the constructor parameters (if any).

Click the "Transact" button to deploy the contract. Make sure to confirm the transaction in the MetaMask pop-up window.

After the contract is deployed, you will see the contract instance in the "Deployed Contracts" section below.

Expand the deployed contract instance, and you will see the available contract functions.

To interact with the contract, select the desired function from the contract interface.

Enter the required parameters (e.g., recipient address, token amount) and click the "Transact" button.

Confirm the transaction in the MetaMask pop-up window.

You will see the transaction details in the Remix "Transactions" panel, and events emitted by the contract will be displayed in the "Logs" section.

# Author
Abhinav Pratap 21BCS5399@cuchd.in

# License
This project is licensed under the Abhinav Pratap License - see the LICENSE.md file for details
