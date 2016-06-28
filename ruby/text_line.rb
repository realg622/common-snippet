class TextLine

  def read
    open('data/demo.txt').each_line do |line|
      # line include '\n' every line
      puts line
    end
  end

  def write
    open('data/temp.txt','w') do |file|
      file << 'abc'
      file.write '123'
      file << 'abc'
    end
    # file content is "abc123"
  end

end

TextLine.new.write
