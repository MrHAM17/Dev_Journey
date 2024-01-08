package com.vertexrealestateapp.app.modules.myhomeempty.ui

import androidx.activity.viewModels
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.databinding.ActivityMyHomeEmptyBinding
import com.vertexrealestateapp.app.modules.home.ui.HomeActivity
import com.vertexrealestateapp.app.modules.myhomeempty.`data`.viewmodel.MyHomeEmptyVM
import kotlin.String
import kotlin.Unit

class MyHomeEmptyActivity :
    BaseActivity<ActivityMyHomeEmptyBinding>(R.layout.activity_my_home_empty) {
  private val viewModel: MyHomeEmptyVM by viewModels<MyHomeEmptyVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.myHomeEmptyVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnAddProprty.setOnClickListener {
      val destIntent = HomeActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "MY_HOME_EMPTY_ACTIVITY"

  }
}
