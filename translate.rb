require 'rest-client'
require 'json'

class Input
    def text
        print "\n\nPhrase to translate -> "
        text = gets.chomp
        text
    end

    def inputLanguage
        print "\nInput language (acronym): "
        inputLanguage = gets.chomp
        inputLanguage
    end

    def outputLanguage
        print "Output language (acronym): "
        outputLanguage = gets.chomp
        outputLanguage
    end
end

class Translator
    def initialize (text, inputLanguage, outputLanguage)
        @text = text
        @inputLanguage = inputLanguage
        @outputLanguage = outputLanguage
        get_key()
    end

    def get_key
        json = File.read('api_key.json')
        @api_key = JSON.parse(json)["key"]
    end

    def translateText
        response = RestClient.post "https://translate.yandex.net/api/v1.5/tr.json/translate", {
            "key":     @api_key,
            "ui":      @inputLanguage,
            "text":    @text,
            "lang":    @outputLanguage,
            "format":  "plain",
            "options": "1"
        }
    end

    def translate
        jsonObject = JSON.parse(translateText)
        translation = jsonObject["text"][0]
        printTranslation(translation)
    end
end

def printTranslation(translation)
    puts "\n\n\t\tTranslation result\n\n"
    print "=" * 60
    puts "\n\t\t#{translation}"
    print "=" * 60
end

input = Input.new
result = Translator.new(input.text, input.inputLanguage, input.outputLanguage)
result.translate