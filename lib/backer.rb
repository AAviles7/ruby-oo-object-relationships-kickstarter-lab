class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        temp = ProjectBacker.all
        ans = []
        x = 0
        temp.length.times do
            if temp[x].backer == self
                ans.push(temp[x].project)
            end
            x += 1
        end
        return ans
    end

end