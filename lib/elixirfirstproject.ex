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
    def getNamesAfterI(names,index) do
      Enum.split(names,index)
    end
    def shuffleNames(names) do
      Enum.shuffle(names)
    end
    def saveNames(names,filename) do
        binary = :erlang.term_to_binary(names)
        File.write(filename,binary)
    end
    def getRandomNamesAfterI(index) do
      createNames() |> shuffleNames |> getNamesAfterI index
    end
    def loadNames(fileName) do
      {status,binary} = File.read(fileName)
      case status do
          :ok -> :erlang.binary_to_term(binary)
          :error -> "file doesn't exist"
      end
    end
end
