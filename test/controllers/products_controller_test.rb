require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
    test 'render a list of products' do
        get products_path 

        assert_response :success
        assert_select '.product', 2
    end

    test 'render detailed product' do
        get product_path(products(:ps4))
        
        assert_response :success
        assert_select '.title', 'ps4'
    end

    test 'render form' do
        get new_product_path

        assert_response :success
        assert_select 'form'
    end
end