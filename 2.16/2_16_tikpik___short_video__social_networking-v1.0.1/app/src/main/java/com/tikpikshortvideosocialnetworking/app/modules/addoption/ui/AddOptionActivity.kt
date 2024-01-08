package com.tikpikshortvideosocialnetworking.app.modules.addoption.ui

import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityAddOptionBinding
import com.tikpikshortvideosocialnetworking.app.modules.addoption.`data`.viewmodel.AddOptionVM
import kotlin.String
import kotlin.Unit

class AddOptionActivity : BaseActivity<ActivityAddOptionBinding>(R.layout.activity_add_option) {
  private val viewModel: AddOptionVM by viewModels<AddOptionVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.addOptionVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "ADD_OPTION_ACTIVITY"

  }
}
