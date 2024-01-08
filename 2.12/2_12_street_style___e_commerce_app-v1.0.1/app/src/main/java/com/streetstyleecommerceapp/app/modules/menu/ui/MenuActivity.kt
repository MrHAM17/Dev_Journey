package com.streetstyleecommerceapp.app.modules.menu.ui

import androidx.activity.viewModels
import com.streetstyleecommerceapp.app.R
import com.streetstyleecommerceapp.app.appcomponents.base.BaseActivity
import com.streetstyleecommerceapp.app.databinding.ActivityMenuBinding
import com.streetstyleecommerceapp.app.modules.discover.ui.DiscoverActivity
import com.streetstyleecommerceapp.app.modules.favorite.ui.FavoriteActivity
import com.streetstyleecommerceapp.app.modules.menu.`data`.viewmodel.MenuVM
import com.streetstyleecommerceapp.app.modules.shop.ui.ShopActivity
import kotlin.String
import kotlin.Unit

class MenuActivity : BaseActivity<ActivityMenuBinding>(R.layout.activity_menu) {
  private val viewModel: MenuVM by viewModels<MenuVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.menuVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.txtDiscover.setOnClickListener {
      val destIntent = DiscoverActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.txtFavorites.setOnClickListener {
      val destIntent = FavoriteActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.txtShop.setOnClickListener {
      val destIntent = ShopActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "MENU_ACTIVITY"

  }
}
