![APEX Built with Love](https://cdn.rawgit.com/Dani3lSun/apex-github-badges/7919f913/badges/apex-love-badge.svg)

# Scenario: Pricing 

A food company is dealing with problems related to the product pricing which refers to the price margin analysis of their products. To solve this question, the company decided to implement a CRM (Customer relationship management) and hired a consultancy to help them in the process. The project's goal is to make a robust and unique system to the number one selling consumer goods company.

_Guided Project by PragmaSchool._

## Margin

The price margin is visible in the products' prices and has the following specifying structure:

1. Products: Product and Product Hierarchy.
2. Clients: Client and Accounts Group.
3. Distribution: Distribuion Center and Distribution Center's State.

The system just allows the margin's insertion if it has at least one attribute of each category filled. If not it should show the message "Fill correctly the margin's specifying structure". The prioritizing order follows

1. Product (2000 points) > Product Hierarchy (1000)
2. Client (200) > Clients Group (100)
3. Distribution Center (20) > State (10) 

# Instructions to use

**First Step:** To implement this code into your Salsforce Org, please review he Data Modeling [here](). Install Salesforce CLI, using [these]() instructions and use the Salesforce CLI Integration VS Code extension, and also verify if Java is installed on your machine.
