with (import ./. {});

let
  jupyterLab = jupyterlabWith {
    kernels = with kernels; [

    ( iHaskellWith {
        name = "hvega";
        packages = p: with p; [
          hvega
          PyF
          formatting
          string-qq
        ];
      })

    ( iPythonWith {
        name = "numpy";
        packages = p: with p; [
          numpy
        ];
      })
    ];
  };

in
  mkDockerImage jupyterLab
