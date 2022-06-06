require "rails_helper"

RSpec.describe "Transactions Requests", :type => :request do
    it "should return all transactions" do
        get '/api/transactions'
        expect(response).to have_http_status(200)
        expect(assigns(:transactions)).to eq(Transaction.all)
    end

    it "should return all transactions for a specific Store Name" do
        get '/api/transactions?store_name=MERCADO%20DA%20AVENIDA'
        expect(response).to have_http_status(200)
        expect(assigns(:transactions)).to eq(Transaction.ransack(store_name_cont: controller.params[:store_name]).result)
    end

    
end
