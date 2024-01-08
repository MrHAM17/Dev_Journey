package com.blogapp.app.modules.blog.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.blogapp.app.modules.blog.`data`.model.BlogModel
import org.koin.core.KoinComponent

class BlogVM : ViewModel(), KoinComponent {
  val blogModel: MutableLiveData<BlogModel> = MutableLiveData(BlogModel())

  var navArguments: Bundle? = null
}
