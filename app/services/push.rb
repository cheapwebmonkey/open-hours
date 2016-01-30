   if @push_notification.present?
    else
      app = Rpush::Apns::App.new
      app.name = "openhours"
      app.certificate = File.read("app/assets/production.pem")
      app.environment = "production" # APNs environment.
      app.password = ""
      app.connections = 1
      app.save! 
    end

    n = Rpush::Apns::Notification.new
    n.app = Rpush::Apns::App.find_by_name("openhours")
    n.device_token = session[:push_notification_token]
    n.alert = "hi im alert!"
    n.data = { foo: :bar }
    n.save!