namespace: SampleFlows
flow:
  name: run_id_demo
  workflow:
    - random_number_generator:
        do:
          io.cloudslang.base.math.random_number_generator:
            - min: '5'
            - max: '100'
        navigate:
          - SUCCESS: sleep
          - FAILURE: on_failure
    - sleep:
        do:
          io.cloudslang.base.utils.sleep:
            - seconds: '1'
        publish:
          - output_0: '${run_id}'
        navigate:
          - SUCCESS: http_client_get
          - FAILURE: on_failure
    - http_client_get:
        do:
          io.cloudslang.base.http.http_client_get:
            - url: "${'http://localhost:8083/oo/rest/v2/executions/' + run_id + '/summary'}"
            - auth_type: anonymous
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      random_number_generator:
        x: 108
        'y': 127
      sleep:
        x: 393
        'y': 151
      http_client_get:
        x: 662
        'y': 169
        navigate:
          92eac30b-2e25-afed-5cc6-3955e267a773:
            targetId: 0400ff6d-6b18-0cd5-f2ed-8020fdcfc181
            port: SUCCESS
    results:
      SUCCESS:
        0400ff6d-6b18-0cd5-f2ed-8020fdcfc181:
          x: 817
          'y': 302
