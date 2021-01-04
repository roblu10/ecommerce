Given("I am on the Tryout steps") do
    tryoutstepspage.load
end

And("I browse all the Tryout steps") do
    array_questions = [
        {"sector" => "Alimentação (1/7)", "question" => "O que não pode faltar no seu café da manhã?", "qty" => "80 produtos"}, 
        {"sector" => "Alimentação (2/7)", "question" => "E para almoço e jantar?", "qty" => "191 produtos"},
        {"sector" => "Alimentação (3/7)", "question" => "Alguma restrição alimentar?", "qty" => "29 produtos"},
        {"sector" => "Alimentação (4/7)", "question" => "Qual é o segredo do seu tempero?", "qty" => "100 produtos"},
        {"sector" => "Alimentação (5/7)", "question" => "Quais são suas bebidas preferidas?", "qty" => "172 produtos"},
        {"sector" => "Alimentação (6/7)", "question" => "Qual é a sobremesa preferida da sua casa?", "qty" => "39 produtos"},
        {"sector" => "Alimentação (7/7)", "question" => "E para a hora do lanche?", "qty" => "149 produtos"},
        {"sector" => "Limpeza (1/2)", "question" => "E para lavar a louça?", "qty" => "36 produtos"},
        {"sector" => "Limpeza (2/2)", "question" => "O que você usa para deixar a sua casa limpa e cheirosa?", "qty" => "140 produtos"},
        {"sector" => "Higiene pessoal (1/4)", "question" => "Como você cuida de seus cabelos?", "qty" => "77 produtos"},
        {"sector" => "Higiene pessoal (2/4)", "question" => "O que costuma usar para cuidar do seu rosto?", "qty" => "23 produtos"},
        {"sector" => "Higiene pessoal (3/4)", "question" => "E para cuidar da sua boca?", "qty" => "44 produtos"},
        {"sector" => "Higiene pessoal (4/4)", "question" => "E do seu corpo?", "qty" => "131 produtos"},
        {"sector" => "Roupas limpas (1/1)", "question" => "Como você deixa as roupas limpas, macias e cheirosas?", "qty" => "77 produtos"},
        {"sector" => "Cuidar das crianças (1/2)", "question" => "E para alimentar seus filhos?", "qty" => "30 produtos"},
        {"sector" => "Cuidar das crianças (2/2)", "question" => "Como você mantém eles limpinhos e cheirosos?", "qty" => "25 produtos"},
        {"sector" => "Animais (1/1)", "question" => "E para alimentar seus animais?", "qty" => "54 produtos"}
    ]
   
    i = 0
    
    loop do
        expect(tryoutstepspage.title_tryout_step_header.text).to eq array_questions[i]["sector"]
        expect(tryoutstepspage.subtitle_tryout_step_header.text).to eq array_questions[i]["question"]
        expect(tryoutstepspage.qty_tryout_step.text).to eq array_questions[i]["qty"]

        if i < array_questions.length-1
            tryoutstepspage.click_btn_tryout_next_step
        end
        
        i +=1
        
        break if i > array_questions.length-1
    end 
    
    tryoutstepspage.click_btn_tryout_complete
end

Then("I confirm that I am on the Homepage page") do
    expect(page).to have_current_path('/')
end
  