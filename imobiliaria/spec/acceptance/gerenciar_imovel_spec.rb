# coding: utf-8

require 'spec_helper'

feature 'gerenciar imovel' do

    scenario 'incluir imovel' do #, :javascript => true do
    
        dono = FactoryGirl.create(:dono, :codigo => '1')

        visit new_imovel_path

        preencher_e_verificar_imovel
    end

    scenario 'alterar imovel' do #, :js => true  do
    
        dono = FactoryGirl.create(:dono, :codigo => '1')

        imovel = FactoryGirl.create(:imovel)

        visit edit_imovel_path(imovel)

        preencher_e_verificar_imovel
    end

    scenario 'excluir imovel' do #, :javascript => true  do
    
        dono = FactoryGirl.create(:dono, :codigo => '1')

        imovel = FactoryGirl.create(:imovel)

        visit imovels_path

        click_link 'Excluir'
    end

    def preencher_e_verificar_imovel

        fill_in 'Codigo', :with => '1'
        fill_in 'Modo',  :with => 'Aluguel'
        fill_in 'Tipo', :with => 'Casa'
        fill_in 'Preco', :with => '700'
        fill_in 'Endereco', :with => 'Minha rua'
        fill_in 'Data Cadastro', :with => '2014-02-18'
        
        select '1', :from => 'Dono'

        click_button 'Salvar'

        page.should have_content 'Codigo: 1'
        page.should have_content 'Modo: Aluguel'
        page.should have_content 'Tipo: Casa'
        page.should have_content 'Preco: 700'
        page.should have_content 'Endereco: Minha rua'
        page.should have_content 'Data Cadastro: 2014-02-18'
        
        page.should have_content 'Dono: 1'
    end
end
