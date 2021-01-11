class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backed = ProjectBacker.all.select {|project| project.backer == self}
        backed.map {|x|
            x.project
            }
    end

end