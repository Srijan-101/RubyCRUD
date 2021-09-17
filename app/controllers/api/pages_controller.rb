class Api::PagesController < Api::BaseController 
    def read
         sql = "SELECT * from STUDENTS"
         records_array = ActiveRecord::Base.connection.exec_query(sql)
         render json: {body:records_array}
    end

    def create
         sql = "INSERT INTO STUDENTS VALUES(#{params[:page][:id]}
         ,'#{params[:page][:name]}',#{params[:page][:age]},'#{params[:page][:address]}')";
         records_array = ActiveRecord::Base.connection.exec_query(sql)
         puts records_array;

         render json:{sucess: "INSERTED INTO TABLE"}
    end

    def delete
        sql = "DELETE FROM STUDENTS WHERE ID=#{params[:page][:id]}";
        records_array = ActiveRecord::Base.connection.exec_query(sql)
        render json:{sucess: "DELETION SUCESSFUL"}
    end

    def update
        sql = "UPDATE STUDENTS SET NAME='#{params[:page][:name]}',AGE=#{params[:page][:age]},ADDRESS='#{params[:page][:address]}' WHERE ID=#{params[:page][:id]}";
        records_array = ActiveRecord::Base.connection.exec_query(sql)
        render json:{}
    end
end