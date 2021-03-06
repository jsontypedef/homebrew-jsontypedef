# homebrew-jsontypedef

JSON Type Definition, aka [RFC 8927](https://tools.ietf.org/html/rfc8927), is an
easy-to-learn, standardized way to define a schema for JSON data. You can use
JSON Typedef to portably validate data across programming languages, create
dummy data, generate code, and more.

This repo is a [Homebrew](https://brew.sh/) tap for JSON Typedef-related tools.
This repo contains Homebrew formulas for:

* [`jtd-codegen`](https://github.com/jsontypedef/json-typedef-codegen), a tool
  that generates code from JSON Typedef schemas. Install it by running:

  ```bash
  brew install jsontypedef/jsontypedef/jtd-codegen
  ```

* [`jtd-infer`](https://github.com/jsontypedef/json-typedef-infer), a tool that
  generates schemas from example data. Install it by running:

  ```bash
  brew install jsontypedef/jsontypedef/jtd-infer
  ```

* [`jtd-fuzz`](https://github.com/jsontypedef/json-typedef-fuzz), a tool that
  generates example data from schemas. Install it by running:

  ```bash
  brew install jsontypedef/jsontypedef/jtd-fuzz
  ```

* [`jtd-validate`](https://github.com/jsontypedef/json-typedef-validate), a tool
  that validates JSON data using JSON Type Definition. Install it by running:

  ```bash
  brew install jsontypedef/jsontypedef/jtd-validate
  ```
