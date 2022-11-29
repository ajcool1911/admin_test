class FeadbackMailer < ApplicationMailer

  def create(object)
    @object = object
    @object_count = object.class.count

    mail to: 'admin@example.com', subject: "A new entry for
    #{object.class} has been created "
    
  end

  def update(object)
    @object = object
    @object_count = object.class.count

    mail to: 'admin@example.com', subject: "A  entry for
    #{object.class} has been updated"
  
  end

  def delete(object)
    @object = object
    @object_count = object.class.count

    mail to: 'admin@example.com', subject: "A entry for
    #{object.class} has been delted "
    
  end
end
