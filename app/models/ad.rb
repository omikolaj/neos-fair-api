class Ad < ApplicationRecord
    scope :drafts, -> { where(type: 'Draft')} # Ad.drafts
    belongs_to :ad_item
    has_one :user, :through => :ad_item # Ad.user
    has_one :item, :through => :ad_item # Ad.item
    has_one :category, :through => :ad_item
    validates :title, :description, presence: true, length: { minimum: 2 }
    validate do |ad|
        if ad.ad_item.item
            if ad.ad_item.item.valid?
                ad.ad_item.item.errors.full_messages.each do |msg|
                    errors[:base] << "Item name can't be blank"
                end
            end
        end
    end
    
    def ad_item_attributes=(ad_item_attributes)
        self.build_ad_item(ad_item_attributes)
    end

    def user_attributes=(user_attributes)
        self.ad_item.user = User.find_by(:id => user_attributes["id"])      
    end

    def item_attributes=(item_attributes)
        self.ad_item.build_item(item_attributes)        
    end

    def category_attributes=(category_attributes)
        self.ad_item.category = Category.all.first
    end
    
end
