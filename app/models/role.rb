class Role < ActiveRecord::Base
  has_many :auditions
  def actors
    name=[]
    self.auditions.each do|a|
        name << a.actor
    end
    name
  end

  def locations
    place=[]
    self.auditions.each do|b|
        place << b.location
    end
    place
  end
  def lead
    found = self.auditions.any? {|c| c.hired = true}
    if found == true
        self.auditions.find_by(hired: true)
    else
        "no actor has been hired for this role"
  end
  end
  def understudy
    list = self.auditions.where(hired:true)
    if list.length >= 2
        list[1]
    else
        "no actor has been hired for understudy for this role"
    end 
  end
end