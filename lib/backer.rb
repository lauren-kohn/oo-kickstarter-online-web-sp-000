class Backer
  
  attr_accessor :name 
  
  attr_reader :backed_projects
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def back_project(project)
    @backed_projects << project
    project.backers << self unless project.backers.include?(self)
      # adds self to @backers array in Project class without creating duplicates
  end
  
end