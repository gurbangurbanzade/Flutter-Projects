class Constellation {
  final String _constellationName;
  final String _constellationDate;
  final String _constellationDetail;
  final String _constellationLitlleImg;
  final String _constellationBigImg;
  get constellationName => this._constellationName;

  get constellationDate => this._constellationDate;

  get constellationDetail => this._constellationDetail;

  get constellationLitlleImg => this._constellationLitlleImg;

  get constellationBigImg => this._constellationBigImg;

  Constellation(
      this._constellationName,
      this._constellationDate,
      this._constellationDetail,
      this._constellationLitlleImg,
      this._constellationBigImg);

  @override
  String toString() {
    return "${_constellationName}";
  }
}
