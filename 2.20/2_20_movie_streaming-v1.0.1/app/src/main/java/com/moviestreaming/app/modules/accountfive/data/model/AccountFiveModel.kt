package com.moviestreaming.app.modules.accountfive.`data`.model

import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.di.MyApp
import kotlin.String

data class AccountFiveModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtNons: String? = MyApp.getInstance().resources.getString(R.string.lbl_account)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLikedMovies: String? = MyApp.getInstance().resources.getString(R.string.lbl_liked_movies)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLikedMovies1: String? = MyApp.getInstance().resources.getString(R.string.lbl_notification)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLikedMovies2: String? =
      MyApp.getInstance().resources.getString(R.string.msg_my_subscription)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLikedMovies3: String? =
      MyApp.getInstance().resources.getString(R.string.msg_transaction_history)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLikedMovies4: String? =
      MyApp.getInstance().resources.getString(R.string.msg_profile_settings)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLikedMovies5: String? = MyApp.getInstance().resources.getString(R.string.lbl_watch_history)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtLikedMovies6: String? = MyApp.getInstance().resources.getString(R.string.lbl_following)

)
