# coding: utf-8

require 'spec_helper'

feature 'gerenciar dono' do

    scenario 'incluir dono', :javascript => true  do

        visit new_dono_path

        preencher_e_verificar_dono
    end

    scenario 'alterar dono' do #, :js => true  do

        dono = FactoryGirl.create(:dono)

        visit edit_dono_path(dono)

        preencher_e_verificar_dono
    end

    scenario 'excluir dono' do #, :javascript => true  do

        dono = FactoryGirl.create(:dono)

        visit dono_path

        click_link 'Excluir'
    end

    def preencher_e_verificar_dono

        fill_in 'Código', :with => "1"
        fill_in 'Nome',  :with => "Rodrigo"
        fill_in 'Login', :with => "rod"
        fill_in 'Senha', :with => "123"
        fill_in 'Emai-l', :with => "rodrigo@gmail.com"
        fill_in 'Endereço', :with => "Minha rua"
        fill_in 'CPF', :with => "123456789"

        click_button 'Salvar'

        page.should have_content 'Código: 1'
        page.should have_content 'Nome: Rodrigo'
        page.should have_content 'Login: rod'
        page.should have_content 'Senha: 123'
        page.should have_content 'E-mail: rodrigo@gmail.com'
        page.should have_content 'Endereço: Minha rua'
        page.should have_content 'CPF: 123456789'
    end
end
