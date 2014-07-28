Template.whiteboard.shapes = ->
  Meteor.Shapes.find()

Template.whiteboard.events
  "click .drawShapes":() ->
    alert "drawShapes"
    wpm = new WhiteboardPaperModel('whiteboard-paper')
    wpm.create()
    # paper = new Raphael(document.getElementById('whiteboard-paper'), 500, 500);
    # circle = paper.circle(100, 100, 80);

    #wpm = new WhiteboardPaperModel("whiteboard-paper", 400, 400)
    #wpm = new Raphael(document.getElementById('whiteboard-paper'), 400, 400)
    console.log "shapes:" + Meteor.Shapes.find().fetch().length
    for shape in Meteor.Shapes.find().fetch()
      shapeType = shape.shape.payload.shape.shape_type
      data = shape.shape.payload.shape.shape
      console.log "shapeType=" + shapeType
      console.log "data=" + JSON.stringify data

      wpm.makeShape(shapeType, data)
      wpm.updateShape(shapeType, data)
