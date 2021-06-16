class Book < ApplicationRecord
	 validates :name, presence: true
	  validates :author, presence: true
	   validates :name, uniqueness: { message: 'used by someother book' }
	    validates :name, length: { minimum: 2 }

	    before_save :merge_names
	    #after_destroy :update_log
	    
def merge_names
   self.name = self.name + " by " + self.author
end

#def update_log
 #  logger.info "=============alas! a book has been deleted id : #{self.id}with name #{self.name}==================="
#end


end
