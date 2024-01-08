package com.comforthotelbookingapp.app.modules.hoteldetails.`data`.model

import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.di.MyApp
import kotlin.String

data class HotelDetailsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtRoyalePresident: String? =
      MyApp.getInstance().resources.getString(R.string.msg_royale_president)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFrance: String? = MyApp.getInstance().resources.getString(R.string.lbl_france)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtGalleryPhotos: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_gallery_photos)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeeAll: String? = MyApp.getInstance().resources.getString(R.string.lbl_see_all)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDetails: String? = MyApp.getInstance().resources.getString(R.string.lbl_details)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHotels: String? = MyApp.getInstance().resources.getString(R.string.lbl_hotels)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBedroomsCounter: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_bedrooms)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtBathroomsCounter: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_2_bathrooms)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSqftCounter: String? = MyApp.getInstance().resources.getString(R.string.lbl_4000_sqft)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? = MyApp.getInstance().resources.getString(R.string.lbl_description)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFacilites: String? = MyApp.getInstance().resources.getString(R.string.lbl_facilites)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSwimmingPool: String? = MyApp.getInstance().resources.getString(R.string.lbl_swimming_pool)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWiFi: String? = MyApp.getInstance().resources.getString(R.string.lbl_wifi)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtRestaurant: String? = MyApp.getInstance().resources.getString(R.string.lbl_restaurant)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtParking: String? = MyApp.getInstance().resources.getString(R.string.lbl_parking)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtMeetingRoom: String? = MyApp.getInstance().resources.getString(R.string.lbl_meeting_room)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtElevator: String? = MyApp.getInstance().resources.getString(R.string.lbl_elevator)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFitnessCenter: String? =
      MyApp.getInstance().resources.getString(R.string.lbl_fitness_center)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHoursOpen: String? = MyApp.getInstance().resources.getString(R.string.lbl_24_hours_open)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLocation: String? = MyApp.getInstance().resources.getString(R.string.lbl_location)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtReview: String? = MyApp.getInstance().resources.getString(R.string.lbl_review)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtFortyEight: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_8)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtReviews: String? = MyApp.getInstance().resources.getString(R.string.lbl_4_981_reviews)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtSeeAll1: String? = MyApp.getInstance().resources.getString(R.string.lbl_see_all)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPrice: String? = MyApp.getInstance().resources.getString(R.string.lbl_29)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtNight: String? = MyApp.getInstance().resources.getString(R.string.lbl_night)

)
