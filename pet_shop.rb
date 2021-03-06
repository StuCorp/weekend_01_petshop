def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, value)
  pet_shop[:admin][:total_cash] += value
  return pet_shop[:admin][:total_cash]
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, num_sold)
  return pet_shop[:admin][:pets_sold] += num_sold
end

def stock_count(pet_shop)
  return  pet_shop[:pets].length()  
end

def pets_by_breed(pet_shop, breed)
  count = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      count << pet[:name]
    end
  end
  return count  
end

def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      pet_shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
    pet_shop[:pets] << new_pet
end

def customer_pet_count(customer)
  return customer[:pets].length
end
  
def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet  
end

def customer_can_afford_pet(customer, new_pet)
  customer[:cash] >= new_pet[:price]
end

def sell_pet_to_customer(pet_shop, pet, customer)
  if pet != nil
    if customer[:cash] >= pet[:price]
      customer[:cash] - pet[:price]
      add_or_remove_cash(pet_shop, pet[:price])
      pet_shop[:admin][:pets_sold] =+ 1 
      customer[:pets] << pet
    end 
  end
end








