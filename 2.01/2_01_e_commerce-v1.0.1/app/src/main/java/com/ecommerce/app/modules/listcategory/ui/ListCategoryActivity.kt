package com.ecommerce.app.modules.listcategory.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseActivity
import com.ecommerce.app.databinding.ActivityListCategoryBinding
import com.ecommerce.app.modules.listcategory.`data`.viewmodel.ListCategoryVM
import kotlin.String
import kotlin.Unit

class ListCategoryActivity :
    BaseActivity<ActivityListCategoryBinding>(R.layout.activity_list_category) {
  private val viewModel: ListCategoryVM by viewModels<ListCategoryVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.listCategoryVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowRight.setOnClickListener {
      finish()
    }
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "LIST_CATEGORY_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ListCategoryActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
