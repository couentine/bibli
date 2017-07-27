class Book < ActiveRecord::Base
  belongs_to :category

  validates :title, presence:
    {
      message: "Le titre doit etre renseigne."
    }

    validates :title, uniqueness:
      {
        messages: "Ce titre est deja pris"
      }

  scope :french, -> { where(category_id: 1) }
  scope :world, -> { where(category_id: 2) }


end
