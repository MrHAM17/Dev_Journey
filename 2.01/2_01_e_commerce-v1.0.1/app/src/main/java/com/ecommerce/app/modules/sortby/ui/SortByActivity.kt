package com.ecommerce.app.modules.sortby.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseActivity
import com.ecommerce.app.databinding.ActivitySortByBinding
import com.ecommerce.app.modules.sortby.`data`.viewmodel.SortByVM
import kotlin.String
import kotlin.Unit

class SortByActivity : BaseActivity<ActivitySortByBinding>(R.layout.activity_sort_by) {
  private val viewModel: SortByVM by viewModels<SortByVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.sortByVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "SORT_BY_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, SortByActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
