require 'http'

class SobekService
  URL = 'http://sobek.ufrgs.br/webservice/sobek.php'

  def post(data)
    HTTP.post(URL, form: { data: "-l 1 #{data}" })
  end
end
