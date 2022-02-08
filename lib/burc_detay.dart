import 'package:burc_rehberi/modeller/burc.dart';
import 'package:flutter/material.dart';

class BurcDetay extends StatelessWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: Colors.pink,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(secilenBurc.burcAdi + ' ' + 'Burcu ve Özellikleri'),
              centerTitle: true,
              background: Image.asset(
                ('assets/images/' + secilenBurc.burcBuyukResim),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Text(
                  secilenBurc.burcDetay,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
