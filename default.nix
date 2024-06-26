{ lib
, python311Packages
, mcap_support_pkg
, py_mcap_pkg
, py_foxglove_websocket_pkg
, asyncudp_pkg
, hytech_np_proto_py
, proto_gen_pkg
}:

python311Packages.buildPythonApplication {
  pname = "py_data_acq";
  version = "1.0.1";

  propagatedBuildInputs = [
    python311Packages.cantools
    python311Packages.systemd
    python311Packages.websockets
    python311Packages.pprintpp
    python311Packages.can
    python311Packages.pyserial-asyncio
    asyncudp_pkg
    python311Packages.lz4
    python311Packages.zstandard
    py_foxglove_websocket_pkg
    python311Packages.protobuf
    mcap_support_pkg
    py_mcap_pkg
    hytech_np_proto_py
    proto_gen_pkg
  ];

  src = ./py_data_acq;
}
