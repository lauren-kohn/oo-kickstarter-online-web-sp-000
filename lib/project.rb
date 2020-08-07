class Project
  
  attr_reader :title, :backers 
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self unless backer.backed_projects.include?(self)
      # adds self to @backed_projects array in Backer class without creating duplicates
  end
  
end 