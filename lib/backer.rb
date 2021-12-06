class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        array = ProjectBacker.all.select {|i| i.backer == self}
        array.collect {|i| i.project}
    end

end