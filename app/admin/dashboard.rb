ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Most Recent Connections" do
          ul do
            Connection.last(5).map do |connection|
              li link_to(connection.organization_name, admin_connection_path(connection))
            end
          end
          link_to "View All Connections", admin_connections_path
        end
        panel "Organizations" do
          ul do
            li link_to "View All Organizations", admin_organizations_path
            li link_to "Add New Organiztion", new_admin_organization_path
          end
        end
        panel "Opportunities" do
          ul do
            li link_to "View All Opportunitites", admin_opportunities_path
            li link_to "Add New Opportunity", new_admin_opportunity_path
          end
        end
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end

