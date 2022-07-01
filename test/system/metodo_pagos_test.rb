require "application_system_test_case"

class MetodoPagosTest < ApplicationSystemTestCase
  setup do
    @metodo_pago = metodo_pagos(:one)
  end

  test "visiting the index" do
    visit metodo_pagos_url
    assert_selector "h1", text: "Metodo pagos"
  end

  test "should create metodo pago" do
    visit metodo_pagos_url
    click_on "New metodo pago"

    fill_in "Code", with: @metodo_pago.code
    fill_in "Name", with: @metodo_pago.name
    fill_in "Producto", with: @metodo_pago.producto_id
    fill_in "String", with: @metodo_pago.string
    click_on "Create Metodo pago"

    assert_text "Metodo pago was successfully created"
    click_on "Back"
  end

  test "should update Metodo pago" do
    visit metodo_pago_url(@metodo_pago)
    click_on "Edit this metodo pago", match: :first

    fill_in "Code", with: @metodo_pago.code
    fill_in "Name", with: @metodo_pago.name
    fill_in "Producto", with: @metodo_pago.producto_id
    fill_in "String", with: @metodo_pago.string
    click_on "Update Metodo pago"

    assert_text "Metodo pago was successfully updated"
    click_on "Back"
  end

  test "should destroy Metodo pago" do
    visit metodo_pago_url(@metodo_pago)
    click_on "Destroy this metodo pago", match: :first

    assert_text "Metodo pago was successfully destroyed"
  end
end
