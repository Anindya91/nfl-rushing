class Rushing

  def self.all
    JSON.parse(File.read(Rails.root.join('public', 'rushing.json')))
  end

end
