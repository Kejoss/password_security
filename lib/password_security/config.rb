class Config
  attr_accessor :min_entropy, :min_length

  def initialize
    @min_entropy = 18 # Valor por defecto
    @min_length = 8   # Valor por defecto
  end

  def config
    @config ||= Config.new
  end

  def configure
    yield(config)
  end
end
