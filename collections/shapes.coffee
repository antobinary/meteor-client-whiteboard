Meteor.methods
  hardcodeCollection: ->
    line1 =
    "payload":
      "whiteboard_id": "d2d9a672040fbde2a47a10bf6c37b6a4b5ae187f-1405019094508/1"
      "shape":
        "wb_id": "d2d9a672040fbde2a47a10bf6c37b6a4b5ae187f-1405019094508/1"
        "shape_type": "rectangle"
        "status": "DRAW_UPDATE"
        "id": "jmvjhcf6p8hj-1-1405019109277"
        "shape":
          "type": "rectangle"
          "status": "DRAW_UPDATE"
          "points": [
            10.49795918367347
            20.765986394557824
            30.306122448979593
            40.95238095238095
          ]
          "whiteboardId": "d2d9a672040fbde2a47a10bf6c37b6a4b5ae187f-1405019094508/1"
          "id": "jmvjhcf6p8hj-1-1405019109277"
          "square": false
          "transparency": false
          "thickness": 8
          "color": 0
        "meeting_id": "183f0bf3a0982a127bdb8161e0c44eb696b3e75c-1405019094496"
        "requester_id": "jmvjhcf6p8hj"
    "header":
      "timestamp": 81104812
      "name": "send_whiteboard_shape_message"
      "version": "0.0.1"

    id = Meteor.Shapes.insert(shape: line1)
    console.log "just inserted a shape:" + id

