package com.tikpikshortvideosocialnetworking.app.modules.editprofile.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class EditProfileModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtTitleSection: String? = MyApp.getInstance().resources.getString(R.string.lbl_edit_profile)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAboutYou: String? = MyApp.getInstance().resources.getString(R.string.lbl_about_you)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtName: String? = MyApp.getInstance().resources.getString(R.string.lbl_name)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAndrewAinsley: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_andrew_ainsley)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtUsername: String? = MyApp.getInstance().resources.getString(R.string.lbl_username)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAndrewAinsley1: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_andrew_ainsley2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBio: String? = MyApp.getInstance().resources.getString(R.string.lbl_bio)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDesignerVid: String? = MyApp.getInstance().resources.getString(R.string.msg_designer_vid)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSocial: String? = MyApp.getInstance().resources.getString(R.string.lbl_social)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtInstagram: String? = MyApp.getInstance().resources.getString(R.string.lbl_instagram)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAndrewAins: String? = MyApp.getInstance().resources.getString(R.string.lbl_andrew_ains)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFacebook: String? = MyApp.getInstance().resources.getString(R.string.lbl_facebook)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAndrewAinsley2: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_andrewainsley2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTwitter: String? = MyApp.getInstance().resources.getString(R.string.lbl_twitter)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAndrewAinsl: String? = MyApp.getInstance().resources.getString(R.string.lbl_andrew_ainsl)

)
