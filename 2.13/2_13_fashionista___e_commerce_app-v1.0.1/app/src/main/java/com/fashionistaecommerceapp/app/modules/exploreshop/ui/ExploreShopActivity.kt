package com.fashionistaecommerceapp.app.modules.exploreshop.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.base.BaseActivity
import com.fashionistaecommerceapp.app.databinding.ActivityExploreShopBinding
import com.fashionistaecommerceapp.app.extensions.loadFragment
import com.fashionistaecommerceapp.app.modules.exploreshop.`data`.viewmodel.ExploreShopVM
import com.fashionistaecommerceapp.app.modules.home.ui.HomeFragment
import kotlin.String
import kotlin.Unit

class ExploreShopActivity : BaseActivity<ActivityExploreShopBinding>(R.layout.activity_explore_shop)
    {
  private val viewModel: ExploreShopVM by viewModels<ExploreShopVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.exploreShopVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnExploreShop.setOnClickListener {
      val destFragment = HomeFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = HomeFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
  }

  companion object {
    const val TAG: String = "EXPLORE_SHOP_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ExploreShopActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
