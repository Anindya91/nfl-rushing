RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == CancanCan ==
  # config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

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

  config.sidescroll = true
  config.model Rushing do
    list do
      sort_by :id
      field :id do
        visible false
        sort_reverse false
      end

      field :player do
        sortable false
        label "Player"
        column_width 200
      end

      field :team do
        sortable false
        searchable false
        label "Team"
      end

      field :pos do
        sortable false
        searchable false
        label "Pos"
      end

      field :att do
        sortable false
        searchable false
        label "Att"
      end

      field :att_g do
        sortable false
        searchable false
        label "Att/G"
      end

      field :yds do
        searchable false
        pretty_value do
          bindings[:object].viewable_yds
        end
        label "Yds"
      end

      field :yds_g do
        sortable false
        searchable false
        label "Yds/G"
      end

      field :avg do
        sortable false
        searchable false
        label "Avg"
      end

      field :td do
        searchable false
        label "TD"
      end

      field :lng do
        searchable false
        pretty_value do
          bindings[:object].ful_lng
        end
        label "Lng"
      end

      field :first do
        sortable false
        searchable false
        label "1st"
      end

      field :first_p do
        sortable false
        searchable false
        label "1st%"
      end

      field :twenty_p do
        sortable false
        searchable false
        label "20+"
      end

      field :forty_p do
        sortable false
        searchable false
        label "40+"
      end

      field :fum do
        sortable false
        searchable false
        label "FUM"
      end
    end

    export do
      field :player, :string
      field :team, :string
      field :pos, :string
      field :att, :string
      field :att_g, :string do
        label "Att/G"
      end
      field :yds, :string do
        export_value do
          bindings[:object].viewable_yds
        end
      end
      field :yds_g, :string do
        label "Yds/G"
      end
      field :avg, :string
      field :td, :string do
        label "TD"
      end
      field :lng, :string do
        export_value do
          bindings[:object].ful_lng
        end
      end
      field :first, :string do
        label "1st"
      end
      field :first_p, :string do
        label "1st%"
      end
      field :twenty_p, :string do
        label "20+"
      end
      field :forty_p, :string do
        label "40+"
      end
      field :fum, :string do
        label "FUM"
      end
    end
  end
end
