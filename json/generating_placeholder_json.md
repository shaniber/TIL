# Generating placeholder JSON

## Context
When working on a project, I needed some fake JSON data from an API to test both downloading and processing. 


## TIL
I was working on testing some code for querying an API at **${JOB}**, and I didn't want to use the live API I was using. A bit of searching lead me to the [DummyJSON site](https://dummyjson.com/). It provides a simple API with several endpoints that returns a fun little JSON object. You can limit the returned resources so you're not dealing with massive amounts of data, fake auth tokens, and add delay.

I used it to generate the data for my [previous TIL (convert JSON to CSV)](../jq/convert_json_to_csv.md). I wanted a limited set of users, and only a subset of the available data. It always sends the ID with the reply, so you can leave that out of the query. Here's my curl command for that:

```curl
curl -s --url "https://dummyjson.com/users?limit=5&select=firstName,lastName,age,address,email,phone"
```

This returned that ugly-but-usable block of JSON:

```json
{"users":[{"id":1,"firstName":"Emily","lastName":"Johnson","age":28,"address":{"address":"626 Main Street","city":"Phoenix","state":"Mississippi","stateCode":"MS","postalCode":"29112","coordinates":{"lat":-77.16213,"lng":-92.084824},"country":"United States"},"email":"emily.johnson@x.dummyjson.com","phone":"+81 965-431-3024"},{"id":2,"firstName":"Michael","lastName":"Williams","age":35,"address":{"address":"385 Fifth Street","city":"Houston","state":"Alabama","stateCode":"AL","postalCode":"38807","coordinates":{"lat":22.815468,"lng":115.608581},"country":"United States"},"email":"michael.williams@x.dummyjson.com","phone":"+49 258-627-6644"},{"id":3,"firstName":"Sophia","lastName":"Brown","age":42,"address":{"address":"1642 Ninth Street","city":"Washington","state":"Alabama","stateCode":"AL","postalCode":"32822","coordinates":{"lat":45.289366,"lng":46.832664},"country":"United States"},"email":"sophia.brown@x.dummyjson.com","phone":"+81 210-652-2785"},{"id":4,"firstName":"James","lastName":"Davis","age":45,"address":{"address":"238 Jefferson Street","city":"Seattle","state":"Pennsylvania","stateCode":"PA","postalCode":"68354","coordinates":{"lat":16.782513,"lng":-139.34723},"country":"United States"},"email":"james.davis@x.dummyjson.com","phone":"+49 614-958-9364"},{"id":5,"firstName":"Emma","lastName":"Miller","age":30,"address":{"address":"607 Fourth Street","city":"Jacksonville","state":"Colorado","stateCode":"CO","postalCode":"26593","coordinates":{"lat":0.505589,"lng":-157.43281},"country":"United States"},"email":"emma.miller@x.dummyjson.com","phone":"+91 759-776-1614"}],"total":208,"skip":0,"limit":5}
```

[It's available on GitHub](https://github.com/Ovi/DummyJSON), too, so you can host it yourself if that's your thing.


## Sources and References
* [DummyJSON](https://dummyjson.com/)
* [DummyJSON - Docs](https://dummyjson.com/docs)
* [DummyJSON - GitHub repo](https://github.com/Ovi/DummyJSON)


## Date
Monday, April  7th, 2025  
2025-04-07  
