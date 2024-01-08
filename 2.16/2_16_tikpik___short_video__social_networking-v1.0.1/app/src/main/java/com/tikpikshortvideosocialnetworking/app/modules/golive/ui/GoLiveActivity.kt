package com.tikpikshortvideosocialnetworking.app.modules.golive.ui

import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.appcomponents.views.ImagePickerFragmentDialog
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityGoLiveBinding
import com.tikpikshortvideosocialnetworking.app.modules.golive.`data`.viewmodel.GoLiveVM
import kotlin.String
import kotlin.Unit

class GoLiveActivity : BaseActivity<ActivityGoLiveBinding>(R.layout.activity_go_live) {
  private val viewModel: GoLiveVM by viewModels<GoLiveVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.goLiveVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageCategoriesRepost.setOnClickListener {
      ImagePickerFragmentDialog().show(supportFragmentManager)
      { path ->//TODO HANDLE DATA
      }

          }
      binding.imageCategoriesXClose.setOnClickListener {
        finish()
      }
    }

    companion object {
      const val TAG: String = "GO_LIVE_ACTIVITY"

    }
  }
