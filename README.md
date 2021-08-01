# Recyminer

<div style="display: flex; flex-direction: column; width: 400px;">

![Logo](./images/Logo/cover.png)

</div>

[![License](https://img.shields.io/badge/License-Apache2-blue.svg)](https://www.apache.org/licenses/LICENSE-2.0) [![Community](https://img.shields.io/badge/Join-Community-blue)](https://developer.ibm.com/callforcode/get-started/) [![Website](https://img.shields.io/badge/View-Website-blue)](https://sample-project.s3-web.us-east.cloud-object-storage.appdomain.cloud/)

Pollution by trash is a considerable global problem that affects oceans, the environment and quality life. One problem of the current recycling system is its inefficiency. The customer needs to separate each product and then look for where to send the products that the public trash system won’t collect.

Not all places require trash to be separated; and this app could contribute to adding more people to help create a functional recycling system just by uploading a picture of their market receipt or a description of their non-functional, old goods.

Most people when not knowing what to do with their daily waste or their non-use products (a broken refrigerator, old clothes, old batteries, etc), they just throw them in the garbage (increasing pollution) or leave them in a corner of their houses. All of these non-use products could have a second life as final products or raw material and the application will help make the collection efficient globally.

## Contents

- [Recyminer](#Recyminer)
  - [Contents](#contents)
  - [Short description](#short-description)
    - [What's the problem?](#whats-the-problem)
    - [How can technology help?](#how-can-technology-help)
    - [The idea](#the-idea)
  - [Demo video](#demo-video)
  - [The architecture](#the-architecture)
  - [Long description](#long-description)
  - [Project roadmap](#project-roadmap)
  - [Getting started](#getting-started)
  - [Live demo](#live-demo)
  - [Built with](#built-with)
  - [Contributing](#contributing)
  - [Versioning](#versioning)
  - [Authors](#authors)
  - [License](#license)
  - [Acknowledgments](#acknowledgments)

## Short description

### What's the problem?

+ Global electronic waste generation reached a record high of 53.6 million metric tons in 2019. This was an increase of 21 percent in just five years and worked out at approximately 7.3 kilograms of e-waste per capita. As waste generation has increased over the years, so too has the volume of materials recycled and composted. 
  

+ However, the recycling rate in the United States stands at just over 30 percent. Of the roughly 300 million metric tons of Municipal solid waste generated in the U.S., much is discarded at landfills.


+ There are more than 1,200 municipal waste landfills in the U.S., with a large number of operating landfills located in California. The waste management company Waste Management Inc. accounts for more than a quarter of the total waste managed in U.S. landfills. As of 2020, there were more than 12,000 businesses in the U.S. waste collection services industry, employing more than 200,000 people.

### How can technology help?

+ Global e-waste volumes grew by 21% between 2104 and 2019, according to the United Nations, a pace that will lead to a doubling of e-waste in just 16 years. The world discarded 53.6 million tons of e-waste in 2019. The United States generated 6.92 million tons of e-waste, about 46 pounds per person, in 2019. It recycled only 15% of the material. 

+ Recycling circuit boards can be more valuable than mining for ore! One ton of circuit boards is estimated to contain 40 to 800 times more gold than one metric ton of ore. There is 30 to 40 times more copper in a ton of circuit boards that can be mined from one metric ton of ore.

### The idea

+ Welcome to **Recyminer**!, the economically sustainable application that attempts to create a functional recycling ecosystem where waste (plastic, paper, clothes, technology or waste by itself) can have a second use life as raw materials or to refurbished products.


+ Users can register through the app as _"miners"_, with that role they can recollect items that other users dispose. Users can submit a request with or without value for picking up an item, and miners can see on their maps the pool of available requests, what size and how much it pays. 


+ For each user we generate a _"eco-profile"_ based on they scanned bills for groceries or other consumption goods. As they ingest the system with more _"consumption data"_ users receive more tokens which can be later change for discount coupons on the **Recyminer Store**.


+ With the _"consumption data"_ we generate a datamap of how much recyclable garbage gets generated, allowing _"miners"_ to have a tool for mining garbage for recyclable materials as: plastics, cardbox, cans, etc. 


+ Miners can choose between two maps, direct orders for pickup from customers or garbage disposal amounts for mining. If they want they can get to the ***Recyminer Store*** and sell they ***raw materials*** for sellers to buy. Sellers have they access to the store and can see the *raw materials* section, in which they can buy and restore items to be resold.


+ The ***Recyminer Store*** aims to be a marketplace in which users can buy refurbished items from sellers, for this they can use they points for discounts. Sellers after they bought the products from "miners" they guarantee that the item works. 

### App Profiles

There are three profiles in the app:

- ***User***: The user can request a miner to take off an unused product for any or no cost. The user can also upload his consumption recipes for app credit to buy products in the app.

- ***Miner***: The miner can choose between picking up products or going to specific recollection waste points to collect recyclable goods. The miner can select if selling or not the product as raw material. If the miner wants to sell it as a final product, he must register as a seller.

- ***Seller***: The seller buys raw material and sells, through the app, a refurbished final product. All the final products must be with a function guarantee.


## Demo video
(https://www.youtube.com/watch?v=MYeAuWsUsU0) 

## The architecture

![Video transcription/translation app](https://developer.ibm.com/developer/tutorials/cfc-starter-kit-speech-to-text-app-example/images/cfc-covid19-remote-education-diagram-2.png)

1. The user takes a picture of a consumption bill.
2. The user uploads the picture to the Cloud Object Storage (COS).
3. If image format is *.jpg the COS triggers a Cloud Function to perform OCR Analysis.
4. Watson Translation translates to English the text result from OCR.
5. Watson Natural Language identifies from text the consumption products.
6. Machine Learning model using Deep Learning classifies and predicts the package and the recyclable index.   
7. Based on waste disposal frequencies a data point map gets generated for miners to mine.
8.   For each identified product from user's consumption bill they gain points which can be later redeem as discounts on the Recyminer Store.
9. User request a miner for e-waste or other recyclable's disposal.
10. Miners can see on their map all available pickup requests.
11. User can specify the value for the pick-up, which can start from 0.
12. User can perform payment online for the pick-up requested.
13. Miner can accept the order request and see the available schedule for doing the pick-up.
14. Miner knows from the order the weight and volume of the request.

## Long description

[More detail is available here](./docs/DESCRIPTION.md)

## Project roadmap

The project currently does the following things.

- Allows users to submit photos of their consumption bills.
- From identified items the system predicts and classifies the item to gather the recyclable index.
- Miners can see the orders from users, also the garbage mining map.
- Users can submit pickup orders, miners can take them and notify user.

The project currently is beta testing this features.  

- Sellers can upload products, and manage their stores.
- Recyminer Store can handle multiple sellers.
- Users can buy directly form Recyminer Store.

It's in a free tier IBM Cloud Kubernetes cluster. In the future we plan to run on Red Hat OpenShift, for example.

See below for our proposed schedule on next steps after Call for Code 2021 submission.

![Roadmap](images/roadmap.png)

## Getting started

In this section you add the instructions to run your project on your local machine for development and testing purposes. You can also add instructions on how to deploy the project in production.

- [recyminer-user-app](https://github.com/CandoCorp/recyminer_app_user)
- [recyminer-miner-app](https://github.com/CandoCorp/recyminer_app_driver)
- [recyminer-web](https://github.com/CandoCorp/recyminer_web)

## Live demo

You can find a running system to test at [recyminer.com](http://recyminer.com/).

Download the user app [here]().\
Download the miner app [here]()

## Built with

- [IBM Cloudant](https://cloud.ibm.com/catalog?search=cloudant#search_results) - The NoSQL database used
- [IBM Cloud Functions](https://cloud.ibm.com/catalog?search=cloud%20functions#search_results) - The compute platform for handing logic
- [IBM API Connect](https://cloud.ibm.com/catalog?search=api%20connect#search_results) - The web framework used
- [Kubernetes Service](https://cloud.ibm.com/catalog?search=api%20connect#search_results) - The web framework used
- [IBM Cloud Monitoring with Sysdig](http://www.dropwizard.io/1.0.2/docs/) - Cloud monitoring for pipelines and Kubernetes
- [IBM Log Analysis with LogDNA](https://maven.apache.org/) - Log anlaysis for pipelines
- [Language Translator](https://rometools.github.io/rome/) - Used for language translation of scanned documents
- [Watson Studio](https://rometools.github.io/rome/) - Used for training and sandboxing for AI models
- [Machine Learning](https://rometools.github.io/rome/) - Used for product classification
- [Key Protect](https://rometools.github.io/rome/) - Used to manage keys within all projects
- [Knowledge Studio](https://rometools.github.io/rome/) - Used for identifying products from english text
- [IBM Cloud Object Storage](https://rometools.github.io/rome/) - Used for Object Storage within the project
- [IBM DevOps Toolchains](https://rometools.github.io/rome/) - Used within the pipeline automations
- [IBM Schematics](https://rometools.github.io/rome/) - Used to manage automate infrastructure with Terraform
- [IBM DevOps Continuous Delivery](https://rometools.github.io/rome/) - Used to automate the development pipelines

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags).

## Authors

- Kevin Cando (Github: <a href="https://github.com/scando1993">scando1993</a>)
- Kevin Santacruz (Github: <a href="https://github.com/Call-for-Code/Project-Sample/graphs/contributors">ksantacr</a>)

## License

This project is licensed under the Apache 2 License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Based on [Billie Thompson's README template](https://gist.github.com/PurpleBooth/109311bb0361f32d87a2).
