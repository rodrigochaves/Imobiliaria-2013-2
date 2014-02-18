# coding: utf-8

require 'spec_helper'

feature 'gerenciar interessado' do

    scenario 'incluir interessado' do #, :javascript => true do

        visit new_interessado_path

        preencher_e_verificar_interessado
    end

    scenario 'alterar interessado' do #, :js => true  do

        dono = FactoryGirl.create(:interessado)

        visit edit_interessado_path(interessado)

        preencher_e_verificar_interessado
    end

    scenario 'excluir interessado' do #, :javascript => true  do

        dono = FactoryGirl.create(:interessado)

        visit interessados_path

        click_link 'Excluir'
    end

    def preencher_e_verificar_interessado

        fill_in 'Nome',  :with => 'Rodrigo'
        fill_in 'Login', :with => 'rod'
        fill_in 'Senha', :with => '123'
        fill_in 'E-mail', :with => 'rodrigo@gmail.com'

        click_button 'Salvar'

        page.should have_content 'Código: 1'
        page.should have_content 'Nome: Rodrigo'
        page.should have_content 'Login: rod'
        page.should have_content 'Senha: 123'
        page.should have_content 'E-mail: rodrigo@gmail.com'
    end
end
