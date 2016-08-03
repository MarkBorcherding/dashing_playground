class Dashing.StackedGraph extends Dashing.Widget

  @accessor 'current', ->
    0

  graphData: (series) ->
    @graph = if @graph
               @graph.series[0] = data.series[0]
               @graph.series[1] = data.series[1]
             else
               container = $(@node).parent()

               # Gross hacks. Let's fix this.
               width = (Dashing.widget_base_dimensions[0] * container.data("sizex")) + Dashing.widget_margins[0] * 2 * (container.data("sizex") - 1)
               height = (Dashing.widget_base_dimensions[1] * container.data("sizey"))

               new Rickshaw.Graph element: @node
                                  width: width
                                  height: height
                                  renderer: 'area'
                                  series: series
                                  padding: {top: 0.02, left: 0.02, right: 0.02, bottom: 0.02}

    @graph.render()

  onData: (data) ->
    @graphData data.series
