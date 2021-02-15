namespace: flows
flow:
  name: TC6
  workflow:
    - ManualOverride:
        do_external:
          b0169327-9dbd-4b0b-925d-080f28492505:
            - current_run_id: '${run_id}'
        navigate:
          - failure: FAILURE
          - success: SUCCESS
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      ManualOverride:
        x: 400
        'y': 230.5
        navigate:
          5ac20da5-190f-645d-a317-7709e758c8c3:
            targetId: a4d5a5dd-0ea8-1ab8-4207-062ec5fc1ebe
            port: failure
          a07e3505-1e4a-ec67-299f-e0a8fd44dde1:
            targetId: e1ce236a-9e25-a68b-041c-40936baa446c
            port: success
    results:
      FAILURE:
        a4d5a5dd-0ea8-1ab8-4207-062ec5fc1ebe:
          x: 418
          'y': 458
      SUCCESS:
        e1ce236a-9e25-a68b-041c-40936baa446c:
          x: 694
          'y': 326
