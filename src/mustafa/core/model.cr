module Mustafa
  module Core
    abstract class Model

      enum Scope
        Singleton
        Request
        Prototype
      end

      macro init(model_class, scope = Scope::Request)
        Mustafa::Core::Helper.model.register_model {{model_class.id}}, {{scope.id}}
      end

      # getter entity_name = ""

      # def initialize(entity_name : String)
        
      # end

      # def select(select_columns : String, where = "true") : Array(Hash(String, String))
      #     _retval = Array(Hash(Sring, String)).new

      #     Core.loader.db do |db|
      #       _retval = db.select(select_columns, @entity_name, where)
      #     end

      #     _retval
      # end

      # def select_all(where = "true") : Array(Hash(String, String))
      #     _retval = Array(Hash(String, String)).new

      #     Core.loader.db do |db|
      #       _retval = db.select_all(@entity_name, where)
      #     end

      #     _retval
      # end

      # def select_table_count()
      #     0
      # end

      # def select_count(where : String)
      #     0
      # end

      # def insert(values : Array(DB::Any))
      #     Core.loader.db do |db|
      #       db.insert(@entity_name, values)
      #     end
      # end

      # def delete(where = "false")
      #     Core.loader.db do |db|
      #       db.delete(@entity_name, where)
      #     end
      # end

      #this class for model
    end
  end
end
