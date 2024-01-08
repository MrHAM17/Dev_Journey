package com.tikpikshortvideosocialnetworking.app.modules.postsuploadmedia.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.postsuploadmedia.`data`.model.Autolayoutvertical6RowModel
import com.tikpikshortvideosocialnetworking.app.modules.postsuploadmedia.`data`.model.PostsUploadMediaModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class PostsUploadMediaVM : ViewModel(), KoinComponent {
  val postsUploadMediaModel: MutableLiveData<PostsUploadMediaModel> =
      MutableLiveData(PostsUploadMediaModel())

  var navArguments: Bundle? = null

  val autoLayoutVerticalList: MutableLiveData<MutableList<Autolayoutvertical6RowModel>> =
      MutableLiveData(mutableListOf())
}
