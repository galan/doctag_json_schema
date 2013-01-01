# DocTag JSON Schema
[![Build Status](https://secure.travis-ci.org/docTag/doctag_json_schema.png?branch=master)](http://travis-ci.org/docTag/doctag_json_schema)

This is the formal description of the docTag(working title) document exchange
format. With docTag we(see Supporters) aim to simplify the exchange of documents
e.g. invoices, between services.

Our goal is to provide a small common subset of objects and fields, which can
be extended by everybody. As a starting point we tackle invoice documents.

## About JSON Schema

[JSON-Schema](json-schema.org) is formal way to describe JSON structures.

> JSON Schema provides a contract for what JSON data is required for a given
application and how to interact with it. JSON Schema is intended to define
validation, documentation, hyperlink navigation, and interaction control of JSON
data.
Quoted: http://tools.ietf.org/html/draft-zyp-json-schema-03

Compared to its evil twin: XML Schema (WSDL), json-schema is lightweight, easier
to read(also for humans) and to parse.

## Other formats

The idea to exchange documents in a structured, machine readable format isn't
new. We could not find any existing solution which could fit small businesses
needs and where easy to implement.

Formats like [EDI](http://en.wikipedia.org/wiki/Electronic_Data_Interchange#See_also)
and it's xml-based subsets rather fit big enterprises and are way too bloated.

## Test

A tiny test-suite in /test ensures that all schema files contain valid json.
The test are run after each commit by travis-ci(see batch above)

To run the test locally you need ruby. First install the ruby-gem dependencies
and then run it:

    bundle install
    rake spec


## Initiative Supporters a-z

* Billomat
* CentralStation CRM
* Doctape
* Easybill
* FastBill
* Fileee
* FreeFibu
* Fortrabbit
* Mein Tagwerk
* Salesking
* Smarchive
* Skippr

## License