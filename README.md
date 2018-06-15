San Francisco Food Safety Data
==============================

Health inspection data for San Francisco restaurants.

This is an example of a dataset that can be bootstrapped with just SQL and doesn't have the kind of intensive wrangling that requires separate Python scripting.



## Bootstrapping the database


```sh

  cat src/dba/bootstrap.sql | sqlite3

```












--------


[storydriven-cookiecutter](https://github.com/storydrivendata/storydriven-cookiecutter) is a simplified version of [cookiecutter-data-science](https://drivendata.github.io/cookiecutter-data-science/) project template.


To use this template:

```sh
cookiecutter https://github.com/storydrivendata/storydriven-cookiecutter
```
