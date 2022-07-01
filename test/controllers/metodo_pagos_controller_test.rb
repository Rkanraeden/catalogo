require "test_helper"

class MetodoPagosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @metodo_pago = metodo_pagos(:one)
  end

  test "should get index" do
    get metodo_pagos_url
    assert_response :success
  end

  test "should get new" do
    get new_metodo_pago_url
    assert_response :success
  end

  test "should create metodo_pago" do
    assert_difference("MetodoPago.count") do
      post metodo_pagos_url, params: { metodo_pago: { code: @metodo_pago.code, name: @metodo_pago.name, producto_id: @metodo_pago.producto_id, string: @metodo_pago.string } }
    end

    assert_redirected_to metodo_pago_url(MetodoPago.last)
  end

  test "should show metodo_pago" do
    get metodo_pago_url(@metodo_pago)
    assert_response :success
  end

  test "should get edit" do
    get edit_metodo_pago_url(@metodo_pago)
    assert_response :success
  end

  test "should update metodo_pago" do
    patch metodo_pago_url(@metodo_pago), params: { metodo_pago: { code: @metodo_pago.code, name: @metodo_pago.name, producto_id: @metodo_pago.producto_id, string: @metodo_pago.string } }
    assert_redirected_to metodo_pago_url(@metodo_pago)
  end

  test "should destroy metodo_pago" do
    assert_difference("MetodoPago.count", -1) do
      delete metodo_pago_url(@metodo_pago)
    end

    assert_redirected_to metodo_pagos_url
  end
end
