namespace: SampleFlows
flow:
  name: masterFlow
  workflow:
    - http_client_get:
        do:
          io.cloudslang.base.http.http_client_get:
            - url: google.com
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      http_client_get:
        x: 128
        'y': 161
        navigate:
          b64a9cf5-b84b-f8f9-0aaf-f084b21922ed:
            targetId: 81b15ad8-9bbf-8a7f-05ff-66fb6bb7409e
            port: SUCCESS
    results:
      SUCCESS:
        81b15ad8-9bbf-8a7f-05ff-66fb6bb7409e:
          x: 452
          'y': 215
