# Convert JSON to CSV

## Context
I needed to convert some JSON output to CSV, which `jq` is able to do natively.

## TIL
I was querying an API to get some detailed information about some process I was doing at **$JOB**, and I needed to convert it to CSV, so I could upspload it to Google Sheets for further manipulation and sharing with another team. I knew that `jq` could do a lot of JSON manipulation, but I didn't realise that it could convert just the info that I needed to a CSV. 

For example, let's say we have a JSON output that looks like this fake data:

```json
{"users":[{"id":1,"firstName":"Emily","lastName":"Johnson","age":28,"address":{"address":"626 Main Street","city":"Phoenix","state":"Mississippi","stateCode":"MS","postalCode":"29112","coordinates":{"lat":-77.16213,"lng":-92.084824},"country":"United States"},"email":"emily.johnson@x.dummyjson.com","phone":"+81 965-431-3024"},{"id":2,"firstName":"Michael","lastName":"Williams","age":35,"address":{"address":"385 Fifth Street","city":"Houston","state":"Alabama","stateCode":"AL","postalCode":"38807","coordinates":{"lat":22.815468,"lng":115.608581},"country":"United States"},"email":"michael.williams@x.dummyjson.com","phone":"+49 258-627-6644"},{"id":3,"firstName":"Sophia","lastName":"Brown","age":42,"address":{"address":"1642 Ninth Street","city":"Washington","state":"Alabama","stateCode":"AL","postalCode":"32822","coordinates":{"lat":45.289366,"lng":46.832664},"country":"United States"},"email":"sophia.brown@x.dummyjson.com","phone":"+81 210-652-2785"},{"id":4,"firstName":"James","lastName":"Davis","age":45,"address":{"address":"238 Jefferson Street","city":"Seattle","state":"Pennsylvania","stateCode":"PA","postalCode":"68354","coordinates":{"lat":16.782513,"lng":-139.34723},"country":"United States"},"email":"james.davis@x.dummyjson.com","phone":"+49 614-958-9364"},{"id":5,"firstName":"Emma","lastName":"Miller","age":30,"address":{"address":"607 Fourth Street","city":"Jacksonville","state":"Colorado","stateCode":"CO","postalCode":"26593","coordinates":{"lat":0.505589,"lng":-157.43281},"country":"United States"},"email":"emma.miller@x.dummyjson.com","phone":"+91 759-776-1614"}],"total":208,"skip":0,"limit":5}
```

Kind of ugly, and lots more info that I needed. However, say I just want the first name, last name, city, state, and email address of each of our fake users. I could pipe the json into jq, iterate over the array of users, reference the object identifier-indices directly for the required fields, and just have `jq` spit it out in CSV format: 

```bash
jq --raw-output '
      .users[] 
    | [.firstName, .lastName, .address.city, .address.stateCode, .address.country, .email] 
    | @csv
' users.json
```

I could also do a bunch of manipulation with array keys, functions, and such, to dynamically find the keys we wanted, but honestly, this was plenty.


## Sources and References
* [DJ Adams - JSON object values into CSV with jq](https://qmacro.org/blog/posts/2022/05/19/json-object-values-into-csv-with-jq/)
* [The jq Manual](https://jqlang.org/manual/)


## Date
Thursday, April  3rd, 2025  
2025-04-03  
