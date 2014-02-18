# coding: utf-8

require 'spec_helper'

feature 'gerenciar quantidade de ambiente' do

    scenario 'incluir qtdeAmbiente' do #, :javascript => true do
    
        imovel = FactoryGirl.create(:imovel, :codigo => '1')
        
        ambiente = FactoryGirl.create(:ambiente, :descricao => 'Quarto')

        visit new_qtdeAmbiente_path

        preencher_e_verificar_qtdeAmbiente
    end

    scenario 'alterar qtdeAmbiente' do #, :js => true  do
    
        imovel = FactoryGirl.create(:imovel, :codigo => '1')
        
        ambiente = FactoryGirl.create(:ambiente, :descricao => 'Quarto')

        qtdeAmbiente = FactoryGirl.create(:qtdeAmbiente)

        visit edit_qtdeAmbiente_path(qtdeAmbiente)

        preencher_e_verificar_qtdeAmbiente
    end

    scenario 'excluir qtdeAmbiente' do #, :javascript => true  do
    
        imovel = FactoryGirl.create(:imovel, :codigo => '1')
        
        ambiente = FactoryGirl.create(:ambiente, :descricao => 'Quarto')

        qtdeAmbiente = FactoryGirl.create(:qtdeAmbiente)

        visit qtdeAmbientes_path

        click_link 'Excluir'
    end

    def preencher_e_verificar_qtdeAmbiente

        fill_in 'Quantidade', :with => '5'
        
        select '1', :from => 'Imovel'
        select 'Quarto', :from => 'Ambiente'

        click_button 'Salvar'

        page.should have_content 'Quantidade: 5'
        
        page.should have_content 'Imovel: 1'
        page.should have_content 'Ambiente: Quarto'
    end
end
