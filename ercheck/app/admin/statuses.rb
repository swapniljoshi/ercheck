ActiveAdmin.register Status do
  menu :parent => "Settings", :if => proc{ current_user.role.name=="admin" }

end
