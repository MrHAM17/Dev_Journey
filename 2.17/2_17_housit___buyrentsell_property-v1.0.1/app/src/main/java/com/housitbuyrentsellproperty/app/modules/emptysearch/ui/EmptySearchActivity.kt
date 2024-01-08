package com.housitbuyrentsellproperty.app.modules.emptysearch.ui

import androidx.activity.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityEmptySearchBinding
import com.housitbuyrentsellproperty.app.modules.emptysearch.`data`.viewmodel.EmptySearchVM
import com.housitbuyrentsellproperty.app.modules.filterfull.ui.FilterFullBottomsheet
import com.housitbuyrentsellproperty.app.modules.searchresult.ui.SearchResultActivity
import kotlin.String
import kotlin.Unit

class EmptySearchActivity : BaseActivity<ActivityEmptySearchBinding>(R.layout.activity_empty_search)
    {
  private val viewModel: EmptySearchVM by viewModels<EmptySearchVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.emptySearchVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.searchViewSearch.setOnClickListener {
      val destIntent = SearchResultActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnIconSetting.setOnClickListener {
      val destFragment = FilterFullBottomsheet.getInstance(null)
      destFragment.show(this.supportFragmentManager, FilterFullBottomsheet.TAG)
    }
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "EMPTY_SEARCH_ACTIVITY"

  }
}
