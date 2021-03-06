NB: The React.js frontend for this project can be found [here](https://github.com/gbenga/get-it-otc-frontend). It includes screenshots, links to the live site and instructions for local installation for the frontend.

# Get It OTC

Get It OTC is a platform providing immuno-compromised individuals with access to over-the-counter medication at home.

### Table of Contents

- [Technologies](#technologies)
- [Installation](#installation)
- [License](#license)

## Technologies

This project was created with:

- Ruby v2.6.1

## **Installation**

To use Get It OTC locally, you will need Git and Ruby installed. You will need to clone this repo and launch the backend to start. Additionally, if you would like to view the database diagram, you will need a drawio extension. These are easy to find by searching "drawio" in the VS Code Extensions Marketplace.

```
Clone this repository
$ git clone https://github.com/gbenga/get-it-otc-backend

Go into the repository
$ cd get-it-otc-backend

Open in your text editor
$ code .

Run migrations and seed database
$ rails db:migrate db:seed

Launch
$ rails s
```

After this, you should be able to view the backend at [localhost:3000](http://localhost:3000/api/v1), and then run the [frontend](https://github.com/gbenga/get-it-otc-frontend).

## **License**

The MIT License (MIT)

Copyright (c) 2020 Gbenga Ojo-Aromokudu

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
