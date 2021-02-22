namespace: SampleFlows
flow:
  name: test123
  workflow:
    - Service_Status:
        do_external:
          8ae29fc7-a0cb-41c4-9d02-363beb4ef85a:
            - host: localhost
            - service: MICROFOCUSRPAD_fa77a96a-aea5-451c-9bc0-0d6bb0d92c3f
        navigate:
          - failure: on_failure
          - service paused: FAILURE
          - service stopped: SUCCESS
          - service running: SUCCESS
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      Service_Status:
        x: 200
        'y': 210
        navigate:
          557a5f96-fb0c-d48c-9e0f-9e58ce36837a:
            targetId: a21112d4-3c21-33bf-b2be-f247b37756b0
            port: service running
          2484d310-b1af-3d90-ad96-8a083f3288d5:
            targetId: a21112d4-3c21-33bf-b2be-f247b37756b0
            port: service stopped
          1d500a0e-720c-abb5-886f-bfd318a43d96:
            targetId: 2ab8ca40-560f-b2d3-01f7-738206437072
            port: service paused
    results:
      SUCCESS:
        a21112d4-3c21-33bf-b2be-f247b37756b0:
          x: 433
          'y': 220
      FAILURE:
        2ab8ca40-560f-b2d3-01f7-738206437072:
          x: 330
          'y': 333
