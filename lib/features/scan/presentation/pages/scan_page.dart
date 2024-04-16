import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:scanner/features/scan/presentation/bloc/scan_bloc.dart';
import 'package:scanner/features/dashboard/presentation/pages/dashboard_page.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({super.key});

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  late MobileScannerController _controller;

  @override
  void initState() {
    _controller = MobileScannerController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ScanBloc, ScanState>(
      listener: (context, state) {
        if (state is GotScan) {
          const DashboardPage().launch(context, isNewTask: true);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text('Scan QR'),
        ),
        extendBodyBehindAppBar: true,
        extendBody: true,
        body: MobileScanner(
          onDetect: _onDetect,
          controller: _controller,
        ),
      ),
    );
  }

  void _onDetect(BarcodeCapture barcodes) {
    final List<Barcode> bc = barcodes.barcodes;
    final barcode = bc.first;

    if (!barcode.rawValue.isEmptyOrNull) {
      BlocProvider.of<ScanBloc>(context).add(OnScan(barcode.rawValue!));
      _controller.stop();
    }
  }
}
