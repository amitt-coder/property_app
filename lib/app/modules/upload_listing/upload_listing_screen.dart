import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:property/app/modules/upload_listing/upload_listing_controller.dart';
import 'package:property/app/routes/app_routes.dart';
import 'package:property/app/utilis/app_color.dart';
import 'package:property/app/utilis/theme.dart';

import '../../common_widget/common_app_bar.dart';
import '../../common_widget/common_materialbutton.dart';
import '../../common_widget/dropdown_field.dart';
import '../../common_widget/editprofile_textformfield_widget.dart';

class UploadListingScreen extends StatefulWidget {
  @override
  State<UploadListingScreen> createState() => _UploadListingScreenState();
}

class _UploadListingScreenState extends State<UploadListingScreen> {
  final UploadListingController uploadListingController =
      Get.put(UploadListingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: Themes.shadowDecoration,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    decoration: Themes.boxDecoration,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Property Information',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            'Name',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          EditProfileTextFormField(
                            TextEditingController: null,
                            hintName: 'Name',
                            TextInputType: TextInputType.name,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(20)
                            ],
                            enable: true,
                            showIcon: '',
                            obscured: false,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Price',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              EditProfileTextFormField(
                                widthGet:
                                    MediaQuery.of(context).size.width * 0.37,
                                TextEditingController: null,
                                hintName: 'Price',
                                TextInputType: TextInputType.name,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(20)
                                ],
                                enable: true,
                                showIcon: '',
                                obscured: false,
                              ),
                              DropDownField(
                                selectValue:
                                    uploadListingController.selectedValue.value,
                                hintName: 'Select Option',
                                width: MediaQuery.of(context).size.width * 0.35,
                                height: 50,
                                selectPriceInstallment: uploadListingController.selectPriceInstallment.value,
                                controller: uploadListingController,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Status',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          DropDownField(
                            selectValue:
                                uploadListingController.selectStatus.value,
                            hintName: 'Select Status',
                            width: MediaQuery.of(context).size.width * 0.72,
                            height: 50,
                            selectPriceInstallment:
                                uploadListingController.selectStatusList.value,
                            controller: uploadListingController,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Country',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          EditProfileTextFormField(
                            TextEditingController: null,
                            hintName: 'Country',
                            TextInputType: TextInputType.name,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(20)
                            ],
                            enable: true,
                            showIcon: '',
                            obscured: false,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'State',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          EditProfileTextFormField(
                            TextEditingController: null,
                            hintName: 'State',
                            TextInputType: TextInputType.name,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(20)
                            ],
                            enable: true,
                            showIcon: '',
                            obscured: false,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'City',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          EditProfileTextFormField(
                            TextEditingController: null,
                            hintName: 'City',
                            TextInputType: TextInputType.name,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(20)
                            ],
                            enable: true,
                            showIcon: '',
                            obscured: false,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Zip Code',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          EditProfileTextFormField(
                            TextEditingController: null,
                            hintName: 'Zip Code',
                            TextInputType: TextInputType.name,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(10)
                            ],
                            enable: true,
                            showIcon: '',
                            obscured: false,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Address',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          EditProfileTextFormField(
                            TextEditingController: null,
                            hintName: 'Address',
                            TextInputType: TextInputType.name,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(20)
                            ],
                            enable: true,
                            showIcon: '',
                            obscured: false,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Latitude',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          EditProfileTextFormField(
                            TextEditingController: null,
                            hintName: 'Latitude',
                            TextInputType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(10)
                            ],
                            enable: true,
                            showIcon: '',
                            obscured: false,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Longitude',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          EditProfileTextFormField(
                            TextEditingController: null,
                            hintName: 'Longitude',
                            TextInputType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(10)
                            ],
                            enable: true,
                            showIcon: '',
                            obscured: false,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Location',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          uploadListingController.initialPosition ==
                                  LatLng(0.0, 0.0)
                              ? Center(
                                  child: CircularProgressIndicator(
                                  color: AppColor.primaryColor,
                                ))
                              : Center(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.50,
                                    width: MediaQuery.of(context).size.width *
                                        0.75,
                                    decoration: BoxDecoration(
                                        color: Colors.blue[100],
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: AppColor.secondrytxtColor,
                                            width: 1)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: GoogleMap(
                                        initialCameraPosition: CameraPosition(
                                          target: uploadListingController
                                              .initialPosition,
                                          zoom: 14.0,
                                        ),
                                        myLocationEnabled: true,
                                        myLocationButtonEnabled: false,
                                        zoomControlsEnabled: true,
                                        mapToolbarEnabled: true,
                                        markers: {
                                          Marker(
                                            markerId:
                                                MarkerId('currentLocation'),
                                            position: uploadListingController
                                                .currentPosition,
                                            icon: BitmapDescriptor
                                                .defaultMarkerWithHue(
                                                    BitmapDescriptor.hueBlue),
                                          ),
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Details',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          EditProfileTextFormField(
                            TextEditingController: null,
                            hintName: 'Details',
                            TextInputType: TextInputType.name,
                            lines: 7,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(100)
                            ],
                            enable: true,
                            showIcon: '',
                            obscured: false,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Divider(
                            thickness: 1,
                            color: AppColor.borderColor,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            'Property Specification',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Bedrooms',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          EditProfileTextFormField(
                            TextEditingController: null,
                            hintName: 'Bedrooms',
                            TextInputType: TextInputType.name,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(15)
                            ],
                            enable: true,
                            showIcon: '',
                            obscured: false,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Bathrooms',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          EditProfileTextFormField(
                            TextEditingController: null,
                            hintName: 'Bathrooms',
                            TextInputType: TextInputType.name,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(15)
                            ],
                            enable: true,
                            showIcon: '',
                            obscured: false,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Kitchen Room',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          EditProfileTextFormField(
                            TextEditingController: null,
                            hintName: 'Kitchen Room',
                            TextInputType: TextInputType.name,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(15)
                            ],
                            enable: true,
                            showIcon: '',
                            obscured: false,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Dining Room',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          EditProfileTextFormField(
                            TextEditingController: null,
                            hintName: 'Dining Room',
                            TextInputType: TextInputType.name,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(15)
                            ],
                            enable: true,
                            showIcon: '',
                            obscured: false,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Living Room',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          EditProfileTextFormField(
                            TextEditingController: null,
                            hintName: 'Living Room',
                            TextInputType: TextInputType.name,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(15)
                            ],
                            enable: true,
                            showIcon: '',
                            obscured: false,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Storage Room',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          EditProfileTextFormField(
                            TextEditingController: null,
                            hintName: 'Storage Room',
                            TextInputType: TextInputType.name,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(15)
                            ],
                            enable: true,
                            showIcon: '',
                            obscured: false,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Other Room',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          EditProfileTextFormField(
                            TextEditingController: null,
                            hintName: 'Other Room',
                            TextInputType: TextInputType.name,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(15)
                            ],
                            enable: true,
                            showIcon: '',
                            obscured: false,
                          ),
                          Text(
                            'Separet by comma Ex: 2 bed rooms, 1 kitchen room',
                            style: GoogleFonts.inter(
                                color: AppColor.txtColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Divider(
                            thickness: 1,
                            color: AppColor.borderColor,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Property Details',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Interior',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          EditProfileTextFormField(
                            TextEditingController: null,
                            hintName: 'Interior',
                            TextInputType: TextInputType.name,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(15)
                            ],
                            enable: true,
                            showIcon: '',
                            obscured: false,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Property Type',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          EditProfileTextFormField(
                            TextEditingController: null,
                            hintName: 'Property Type',
                            TextInputType: TextInputType.name,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(15)
                            ],
                            enable: true,
                            showIcon: '',
                            obscured: false,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Images',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            decoration: Themes.shadowDecoration,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      color: AppColor.borderColor,
                                      border: Border.all(
                                          color: Colors.black, width: 1)),
                                  child: Text(
                                    'Choose File',
                                    style: GoogleFonts.inter(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Text(
                                  'No file chosen',
                                  style: GoogleFonts.inter(
                                      color: AppColor.txtColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Divider(
                            thickness: 1,
                            color: AppColor.borderColor,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Amenities',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.37,
                            decoration: Themes.shadowDecoration,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Obx(() => GridView.builder(
                                  shrinkWrap: true,
                                  padding: EdgeInsets.zero,
                                  physics: NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 2.2 / 1,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                  ),
                                  itemCount: uploadListingController
                                      .amenitiesList.length,
                                  itemBuilder: (context, index) {
                                    String key = uploadListingController
                                        .amenitiesList[index].keys.first;
                                    return Container(
                                      child: CheckboxListTile(
                                        contentPadding: EdgeInsets.zero,
                                        title: Text(
                                          key,
                                          style: GoogleFonts.inter(
                                              color: AppColor.txtColor,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13),
                                        ),
                                        value: uploadListingController
                                            .amenitiesList[index][key],
                                        onChanged: (bool? value) {
                                          if (value != null) {
                                            uploadListingController
                                                .updateAmenity(
                                                    index, key, value);
                                          }
                                        },
                                      ),
                                    );
                                  },
                                )),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Divider(
                            thickness: 1,
                            color: AppColor.borderColor,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Text(
                                'Nearby Information',
                                style: GoogleFonts.inter(
                                    color: AppColor.primaryColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: AppColor.secondrytxtColor,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Icon(
                                  Icons.add,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Name',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          EditProfileTextFormField(
                            TextEditingController: null,
                            hintName: 'Name',
                            TextInputType: TextInputType.name,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(15)
                            ],
                            enable: true,
                            showIcon: '',
                            obscured: false,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Distance',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          EditProfileTextFormField(
                            TextEditingController: null,
                            hintName: 'Distance',
                            TextInputType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(5)
                            ],
                            enable: true,
                            showIcon: '',
                            obscured: false,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Contact Number',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          EditProfileTextFormField(
                            TextEditingController: null,
                            hintName: 'Contact Number',
                            TextInputType: TextInputType.name,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(11)
                            ],
                            enable: true,
                            showIcon: '',
                            obscured: false,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Upload Images',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            decoration: Themes.shadowDecoration,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      color: AppColor.borderColor,
                                      border: Border.all(
                                          color: Colors.black, width: 1)),
                                  child: Text(
                                    'Choose File',
                                    style: GoogleFonts.inter(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Text(
                                  'No file chosen',
                                  style: GoogleFonts.inter(
                                      color: AppColor.txtColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Details',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          EditProfileTextFormField(
                            TextEditingController: null,
                            hintName: 'Details',
                            TextInputType: TextInputType.name,
                            lines: 7,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(100)
                            ],
                            enable: true,
                            showIcon: '',
                            obscured: false,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                  child: Icon(
                                Icons.delete,
                                size: 30,
                                color: Colors.white,
                              )),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Advantages',
                            style: GoogleFonts.inter(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Container(
                            height: 50,
                            decoration: Themes.shadowDecoration,
                            child: Obx(() {
                              return Center(
                                child: CheckboxListTile(
                                  activeColor: AppColor.primaryColor,
                                  title: Text(
                                    "Pets Allowed",
                                    style: GoogleFonts.inter(
                                        color: AppColor.txtColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                  ),
                                  value: uploadListingController.isAgreed.value,
                                  onChanged: (bool? value) {
                                    uploadListingController.toggleAgreement();
                                  },
                                  controlAffinity:
                                      ListTileControlAffinity.leading,
                                ),
                              );
                            }),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Divider(
                            thickness: 1,
                            color: AppColor.borderColor,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          CommonMaterialButton(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.20,
                            text: 'Submit',
                            color: AppColor.primaryColor,
                            textcolor: Colors.white,
                            ontap: () {
                              Get.offAllNamed(AppRoutes.BOTTOMNAVIGATION);
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
