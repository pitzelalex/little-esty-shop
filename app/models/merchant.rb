class Merchant < ApplicationRecord
  has_many :items
  has_many :invoices, through: :items
  has_many :customers, through: :invoices
  has_many :transactions, through: :invoices

  enum status: ['disabled', 'enabled']
  
  def top_customers
  end
end
