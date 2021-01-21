class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ans = []
        ProjectBacker.all.select do |proj|
            if proj.backer == self
                ans.push(proj.project)
            end
        end
        return ans
    end

end