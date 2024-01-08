package com.tunecastmusicstreamingpodcastapp.app.modules.podcastepisodedetails.`data`.model

import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.di.MyApp
import kotlin.String

data class PodcastEpisodeDetailsModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtAuthorName: String? =
      MyApp.getInstance().resources.getString(R.string.msg_the_jordan_harbinger2)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAuthorName1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_jordan_harbinger)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDuration: String? = MyApp.getInstance().resources.getString(R.string.lbl_1_day_ago)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtText: String? = MyApp.getInstance().resources.getString(R.string.lbl)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTime: String? = MyApp.getInstance().resources.getString(R.string.lbl_48_26_mins)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtPodcastTitleHere: String? =
      MyApp.getInstance().resources.getString(R.string.msg_691_shaquille_o_neal)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription: String? =
      MyApp.getInstance().resources.getString(R.string.msg_shaquille_o_neal)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWhatWeDiscuss: String? =
      MyApp.getInstance().resources.getString(R.string.msg_what_we_discuss)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtTherealworldexperien: String? =
      MyApp.getInstance().resources.getString(R.string.msg_the_real_world_experience)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtDescription1: String? =
      MyApp.getInstance().resources.getString(R.string.msg_how_shaq_assembled)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtWhyShaqDoesnT: String? =
      MyApp.getInstance().resources.getString(R.string.msg_why_shaq_doesn_t)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtHowShaqManages: String? =
      MyApp.getInstance().resources.getString(R.string.msg_how_shaq_manages)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtAndMuchMoreView: String? =
      MyApp.getInstance().resources.getString(R.string.msg_and_much_more_view)

)
