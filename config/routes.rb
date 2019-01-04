Rails.application.routes.draw do
  get 'answers/edit'
  # get 'questions/index'
  # get 'questions/show'
  # get 'questions/new'
  # get 'questions/edit'
  
  # ルートのアクセス先のアクションを設定する
  root 'questions#index'
  
  # 自動で指定のControllerのルート設定を行う(index create new edit show update destroy)
  resources :questions do
    resources :answers  #questionsに紐付くanswersのルートを自動生成する
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
