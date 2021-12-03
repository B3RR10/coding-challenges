class LogLineParser
  def initialize(line)
    @log_line = parse line.strip
  end

  def message
    @log_line[:msg]
  end

  def log_level
    @log_line[:level].downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end

  private

  def parse(msg)
    matched = /\[(\w+)\]:\s*(.*)\s*$/.match(msg)
    { level: matched[1], msg: matched[2] }
  end
end
