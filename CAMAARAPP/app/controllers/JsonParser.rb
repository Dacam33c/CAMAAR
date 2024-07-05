#leitura do JSON
class JsonParser
  #define uma função que lê o JSON
  def self.parse(file_path)
    JSON.parse(File.read(file_path))
  end
end
