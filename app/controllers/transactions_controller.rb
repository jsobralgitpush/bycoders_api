class TransactionsController < ActionController::API
    def index
        @transactions = Transaction.all

        filter_by_query if params[:store_name].present?
    end

    def create
        file_data = File.open(params[:file]).readlines.map(&:chomp)
        
        file_data.each do |line|
            transaction = Transaction.new

            transaction.transaction_type = line[0]
            transaction.date =  line[1, 8]
            transaction.amount = line[9, 10]
            transaction.taxpayer_id = line[19, 11]
            transaction.card_used =  line[30, 12]
            transaction.time =  line[42, 6]
            transaction.store_owner =  line[48, 14]
            transaction.store_name = line[62, 19]

            transaction.save
        end
    end

    private
    def filter_by_query
        @transactions = @transactions.ransack(
            store_name_cont: params[:store_name]
        ).result
    end
end
