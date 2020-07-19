class Project
    @@all = []
    attr_accessor :name, :goal, :pledge_total, :user
    def initialize(name, user, goal)
        @name = name
        @goal = goal
        @pledge_total = 0
        @user = user
        @@all << self
    end

    def self.all
        @@all
    end

    def pledge(pledge_amount)
        @pledge_total += pledge_amount
    end

    def self.no_pledges
        Project.all.select {|project| project.pledge_total == 0}
    end

    def self.above_goal
        Project.all.select {|project| project.pledge_total >= project.goal}
    end

    def self.most_backers
        histo = Pledge.all.each_with_object(Hash.new(0)) do |pledge, new_hash|
            new_hash[pledge.project] += 1
        end
        max = histo.max_by{|k,v| v}
        max[0]
    end
        
end