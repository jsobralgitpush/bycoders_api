class TransactionsController < ActionController::API
    def index
        @transactions = Transaction.all
    end

    def create
        #como vamos receber o arquivo via input?

        transaction = Transaction.new

        file_data.each do |line|
            transaction.transaction_type = line[0]
            transaction.date =  line[1, 8]
            transaction.amount = line[9, 10]
            transaction.taxpayer_id = line[19, 11]
            transaction.card_used =  line[30, 12]
            transaction.time =  line[42, 6]
            transaction.store_owner =  line[48, 14]
            transaction.store_name = line[62, 19]
        end

        if transaction.save
        else
        end
    end
end
