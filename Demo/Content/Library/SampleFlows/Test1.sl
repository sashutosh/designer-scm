namespace: SampleFlows
flow:
  name: Test1
  workflow:
    - Http_Client_Get:
        do_external:
          3e4ddaf8-c20d-48b7-8f05-3dd74cac2643:
            - url: 'http:s//google.com'
        navigate:
          - success: SUCCESS
          - failure: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      Http_Client_Get:
        x: 449
        'y': 139
        navigate:
          546a4706-ae29-e148-7aaf-298f1a3714ca:
            targetId: 817d77cf-2cd5-1ffc-4847-dd6645db49e5
            port: success
    results:
      SUCCESS:
        817d77cf-2cd5-1ffc-4847-dd6645db49e5:
          x: 630
          'y': 202
