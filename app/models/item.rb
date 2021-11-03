class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :status
  belongs_to :postage
  belongs_to :prefecture
  belongs_to :shipping_day
  belongs_to :user
  has_one_attached :image


  validates :name, presence: true
  validates :explanation, presence: true
  validates :category_id, presence: true, numericality: { other_than: 1,  message: "can't be blank"} 
  validates :status_id	, presence: true, numericality: { other_than: 1,  message: "can't be blank"} 
  validates :postage_id, presence: true, numericality: { other_than: 1,  message: "can't be blank"} 
  validates :prefecture_id, presence: true, numericality: { other_than: 0,  message: "can't be blank"}
  validates :shipping_day_id, presence: true, numericality: { other_than: 1,  message: "can't be blank"}
  validates :price, presence: true

end