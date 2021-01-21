class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    
    def backers
        ans = []
        ProjectBacker.all.select do |proj|
            if proj.project == self
                ans.push(proj.backer)
            end
        end
        return ans
    end

end