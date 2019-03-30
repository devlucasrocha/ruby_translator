# Translator made in ruby! :boom:
It's a ruby script that does an API request to find the translation

To use the script, firstly you have to crate an yandex account, thereafter you should generate an API key and **put between the "" in api_key.json fil**e.

```json
{
    "key":"<YANDEX API KEY>"
}
```

&nbsp;
For example your code should looks like the code below:

```ruby
{
    "key":"asdfghkju952jfj"
}
```


See [[YANDEX website to get the API key](https://tech.yandex.com/translate/)]

Alright! Now everything is done, let's use the script!

## Run these commands once
```sh
$ gem install json
$ gem install rest-client
```
#### [NOTE: If you're using windows, is better you run cmd as administrator]

Done! Now you can run the script many times that you want to!

## Run this command below: 
```sh
$ ruby translate.rb
```

## See below the example of an output
![alt text](https://raw.githubusercontent.com/devlucasrocha/markdown_images/master/print.PNG)
