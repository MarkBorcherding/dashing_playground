SCHEDULER.every '3s', :first_in => 0 do |job|
  send_event 'stacked_graph_example', {
    series: [
        {
          name: 'Northeast',
          color: '#00F',
          data: [ { x: 10, y: 25},
                  { x: 15, y: 29},
                  { x: 17, y: rand(1..100)} ]
        },
        {
          name: 'Northeast',
          color: '#0F0',
          data: [ { x: 10, y: 25},
                  { x: 15, y: 29},
                  { x: 17, y: rand(1..100)} ]
        }
    ]
  }
end
