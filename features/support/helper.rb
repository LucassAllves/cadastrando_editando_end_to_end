module Helper
    def tirar_foto(nome_arquivo, resultado)
        caminho_arquivo = "report/screenshot/test#{resultado}"
        foto = "#{caminho_arquivo}/#{nome_arquivo}.png"
        page.save_screenshot(foto)
        attach('image/png', 'Clique aqui')

    end
end