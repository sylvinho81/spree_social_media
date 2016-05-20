Deface::Override.new(
  virtual_path: 'spree/layouts/admin',
  name: 'social_media_admin_sidebar_menu',
  insert_bottom: '#main-sidebar',
  partial: 'spree/admin/shared/social_media_sidebar_menu'
)
