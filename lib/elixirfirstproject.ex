defmodule Elixirfirstproject do
    def hello do
      "hello world"
    end
    def createNames do
      lastNames = ["Krul","Srul","Mril","Johnson"]
      firstNames = ["Jon","Brin","Trisk","Lorel"]
      for firstName <- firstNames,lastName <- lastNames do
        "Mr #{firstName} #{lastName}"
      end
    end
end
