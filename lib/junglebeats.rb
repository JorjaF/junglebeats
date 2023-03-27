class JungleBeats
 attr_reader :list

  def initialize()
    @list = LinkedList.new

  end

  def append(data)
    beats=data.split(" ")
    beats.each do |beat|
      list.append(beat)
    end
    data
  end
end