class UniqueKey
  attr_reader :article
  def initialize(article)
    @article = article
  end

  def call
    generate_key
  end

  private

  def generate_key
    letters = *('A'..'Z')
    figures = *(0..9)
      binding.pry
    begin
      unique_key = (letters.sample(3) + figures.sample(3)).join
      article.unique_key = unique_key
    end while !article.save
  end

end
