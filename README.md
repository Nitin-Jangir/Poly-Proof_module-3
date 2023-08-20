# CIRCUIT USING CIRCOM

In this project, I've designed a circuit using the Circom language and deployed it on the Mumbai testnet of the Polygon chain.

## Description

This project is my submission for the Polygon [Advanced] course offered by Metacrafters. The project encompasses the following key steps:

1. **Circuit Creation:** I have meticulously crafted a circuit using various logical gates and following the project's stipulated requirements, all implemented in the Circom language.

2. **Verification:** The circuit's functionality is thoroughly verified, and its performance is evaluated using custom inputs to ensure its accuracy and reliability.

3. **Proof Generation:** Specific inputs A=0 and B=1 are utilized to generate proof, adding an extra layer of security and authenticity to the circuit's functionality.

4. **Deployment:** The verifier contract, once rigorously tested and proven, is deployed onto the Mumbai Testnet on the Polygon chain. This ensures the circuit can be accessed and utilized in a real-world blockchain environment.

5. **Method Invocation:** The `verifyProof()` method, an integral part of the verifier contract, is invoked to validate the generated proof. The resulting assert output is expected to be true, thereby confirming the circuit's validity.

## Installation

To get started with this project, follow these installation steps:
1. Clone the repository given by metacrafters, or You can Clone my Repo, by using the git clone command.

2. Then run the command npm i to install all the dependencies.

3. Create a .env file and store your private key there.

## Compilation and Deployment

To compile and deploy the circuit and verifier contract, follow these steps:
1. For a compilation of circom file, run this command npx hardhat circom

2. For deployment run this command npx hardhat run scripts/deploy.ts --network mumbai




