class User

    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def create_project(name, goal)
        Project.new(name, self, goal)
    end
    
    def self.project_creator
        Project.all.map{|project| project.user}.uniq
    end

    def back_project(project_name, pledge_amount)
       found = Project.all.find {|project| project.name == name}
    end

    def self.highest_pledge
        Pledge.all.max{|a, b| a.amount <=> b.amount}.user
    end

    def self.group_by_user
        Pledge.all.group_by {|pledge| pledge.user}
    end

    def self.uniq_pledger
        group_by_user.transform_values do |v|
            v.uniq{|pledge| pledge.project}
        end
    end

    # def self.multi_pledgers
    #     uniq_pledger.each_with_object(Hash.new(0)) do |value, new_hash|
    #         new_hash[value.project] += 1
    #     end
    # end

def my_projects
    Pledge.all.map {|pledge| pledge.project if pledge.user == self}.compact.uniq
end

def self.multi_pledger
    self.all.select {|user| user if user.my_projects.length > 1}
end
end
