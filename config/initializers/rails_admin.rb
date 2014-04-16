RailsAdmin.config do |config|
config.navigation_static_links = {
    'Google' => 'http://www.google.com'
}
config.model 'Article' do
  navigation_label 'League related'
  end
  ### Popular gems integration

  ## == Devise ==
   config.authenticate_with do
     warden.authenticate! scope: :user
   end
   config.current_user_method(&:current_user)

  ## == Cancan ==
   config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

#ckeditor
  config.model Article do
    include_all_fields
    edit do
      # For RailsAdmin >= 0.5.0
      field :title do
        partial :my_form
      end
      field :body, :ck_editor
      # For RailsAdmin < 0.5.0
      # field :description do
      #   ckeditor true
      # end
    end
  end
end
