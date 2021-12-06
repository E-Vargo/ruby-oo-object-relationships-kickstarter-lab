class Project 

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers 
        array = ProjectBacker.all.select {|i| i.project == self}
        array.collect {|i| i.backer}
    end

end