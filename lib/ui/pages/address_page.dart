// notes
// warna biru pengkodean sudah ok, tetapi kode tidak sama dengan video alias ada campuran #008CFF
// warna hijau pengkodean sudah ok #AAFF60
// warna Kuning code sesuai video tetapi tidak jalan pada flutter 2 #FFF207
// warna oranye code belum disesuaikan pada video #DA7C1F
// warna merah code ada yang error sehingga running debug juga tidak jalan #FF3535

part of 'pages.dart';

class AddressPage extends StatefulWidget {
  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  int? _value = 1; //#008CFF
  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    TextEditingController houseNumController = TextEditingController();
    TextEditingController cityController = TextEditingController();

    return GeneralPage(
        title: 'Address',
        subtitle: "Make sure it's valid",
        onBackButtonPressed: () {
          Get.back();
        },
        child: Column(
          children: [
            // form isian nomor telepon #AAFF60
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
              child: Text(
                "Phone Number",
                style: blackFontStyle2,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black)),
              child: TextField(
                controller: phoneController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: greyFontStyle,
                    hintText: 'Type your phone number'),
              ),
            ),
            // form isian Alamat (Address) #AAFF60
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
              child: Text(
                "Address",
                style: blackFontStyle2,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black)),
              child: TextField(
                controller: addressController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: greyFontStyle,
                    hintText: 'Type your address'),
              ),
            ),
            // form isian Nomor Rumah (House Number) #AAFF60
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
              child: Text(
                "House Number",
                style: blackFontStyle2,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black)),
              child: TextField(
                controller: houseNumController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: greyFontStyle,
                    hintText: 'Type your house number'),
              ),
            ),
            // form isian kota(city) #008CFF
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
              child: Text(
                "City",
                style: blackFontStyle2,
              ),
            ),
            Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black)),
                child: DropdownButton(
                    //#008CFF
                    value: _value,
                    isExpanded: true,
                    underline: SizedBox(),
                    items: [
                      DropdownMenuItem(
                          child: Text('Jepara', style: blackFontStyle3),
                          value: 1), //#008CFF
                      DropdownMenuItem(
                          child: Text('Jakarta', style: blackFontStyle3),
                          value: 2), //#008CFF
                      DropdownMenuItem(
                        child: Text('Surabaya', style: blackFontStyle3),
                        value: 3, //#008CFF
                      )
                    ],
                    //#008CFF
                    onChanged: (int? value) {
                      setState(() {
                        _value = value;
                      });
                    },
                    hint: Text("select your city"))),
            // tombol sign up
            Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 24),
                height: 45,
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: RaisedButton(
                  onPressed: () {},
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  color: mainColor,
                  child: Text('Sign Up now',
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontWeight: FontWeight.w500)),
                )),
          ],
        ));
  }
}
