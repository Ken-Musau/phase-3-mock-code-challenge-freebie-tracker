class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  def received_one?(item_name)
    freebies.exists?(item_name: item_name)
  end

  def give_away(dev, freebie)
    if freebie.dev == self
      freebie.update(dev: dev)
      puts "Successfully gave away the freebie to #{dev.name}."
    else
      puts "You can only give away a freebie that belongs to you."
    end
  end
end
