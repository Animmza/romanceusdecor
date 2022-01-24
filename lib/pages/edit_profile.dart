import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:romanceusdecor/models/user.dart';
import 'package:romanceusdecor/services/auth_services.dart';

class EditProfile extends StatefulWidget {
  final AppUser user;
  const EditProfile({Key? key, required this.user}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _addressController = TextEditingController();

  AuthServices _authServices = AuthServices();
  AppUser? _user;
  @override
  void initState() {
    _user = widget.user;
    _fullNameController.text = _user!.fullName;
    _emailController.text = _user!.email;
    _addressController.text = _user!.address;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: SafeArea(
        child: ScreenUtilInit(
          builder: () {
            return Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    child: CircleAvatar(
                      radius: .1.sh,
                      backgroundColor: Colors.grey.shade300,
                      child: IconButton(
                        onPressed: () {
                          _authServices.changeProfilePicture();
                          _authServices.fetchUserData().then((user) {
                            setState(() {
                              _user = user;
                              print(user.toString());
                            });
                          });
                        },
                        icon: _user!.profilePicUrl.isEmpty
                            ? Icon(
                                CupertinoIcons.person,
                                color: Colors.grey,
                              )
                            : SizedBox(),
                        iconSize: .1.sh,
                      ),
                      backgroundImage: _user!.profilePicUrl.isNotEmpty
                          ? CachedNetworkImageProvider(_user!.profilePicUrl)
                          : null,
                    ),
                  ),
                  SizedBox(
                    height: .0075.sh,
                  ),
                  Text(
                    'Name',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  SizedBox(
                    height: .0075.sh,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Field is required.";
                      }
                    },
                    controller: _fullNameController,
                    decoration: InputDecoration(
                        hintText: 'Enter Full Name',
                        hintStyle: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w300),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: .3),
                            borderRadius: BorderRadius.zero),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide(
                              width: .7, color: Theme.of(context).primaryColor),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                        )),
                  ),
                  SizedBox(
                    height: .02.sh,
                  ),
                  Text(
                    'Email',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  SizedBox(
                    height: .01.sh,
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                        hintText: 'Enter email',
                        hintStyle: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w300),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: .3),
                            borderRadius: BorderRadius.zero),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide(
                              width: .7, color: Theme.of(context).primaryColor),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                        )),
                  ),
                  SizedBox(
                    height: .02.sh,
                  ),
                  Text(
                    'Address',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  SizedBox(
                    height: .01.sh,
                  ),
                  TextFormField(
                    controller: _addressController,
                    decoration: InputDecoration(
                        hintText: 'Enter Address',
                        hintStyle: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w300),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: .3),
                            borderRadius: BorderRadius.zero),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide(
                              width: .7, color: Theme.of(context).primaryColor),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                        )),
                  ),
                  SizedBox(
                    height: .05.sh,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Save Changes'),
                      style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(fontSize: 15.sp),
                        fixedSize: Size(1.sw, .07.sh),
                        elevation: 0,
                        shape: BeveledRectangleBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
