class GraphsController < ApplicationController

    def index
        @graphs = Graph.all
        @result = Graph.pluck(:weigh_on, :weight)
    end

    def show

    end

    def new
        @graph = Graph.new
    end

    def create
        graph = Graph.new(graph_parameter)
        graph.user_id = current_user.id
        
        if graph.save
            redirect_to controller: :fronts, action: :show, id: current_user.id
        else 
            redirect_to :action => "new"
        end
    end

    def destroy
        graph = Graph.find(params[:id])
        graph.destroy
        redirect_to graphs_path
    end
    
    def edit
        @graph = Graph.find(params[:id])
    end
    
    def update
        graph = Graph.find(params[:id])
        if graph.update(graph_parameter)
            redirect_to :action => "index"
        else
            redirect_to :action => "new"
        end
    end

    def graph_parameter
        params.require(:graph).permit(:name, :weight, :weigh_on)
    end
end
