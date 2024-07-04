#leitura do JSON
class JsonParser
  def self.parse(file_path)
    JSON.parse(File.read(file_path))
  end
end
