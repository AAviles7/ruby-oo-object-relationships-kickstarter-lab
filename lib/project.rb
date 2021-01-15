class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    
    def backers
        temp = ProjectBacker.all
        ans = []
        x = 0
        temp.length.times do
            if temp[x].project == self
                ans.push(temp[x].backer)
            end
            x += 1
        end
        return ans
    end

end