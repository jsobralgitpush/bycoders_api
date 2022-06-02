json.array! @transactions do |transaction|
    json.id transaction.id
    json.transaction_type transaction.transaction_type
    json.date transaction.date
    json.amount transaction.amount
    json.taxpayer_id transaction.taxpayer_id
    json.card_used transaction.card_used
    json.time transaction.time
    json.store_owner transaction.store_owner
    json.store_name transaction.store_name
end