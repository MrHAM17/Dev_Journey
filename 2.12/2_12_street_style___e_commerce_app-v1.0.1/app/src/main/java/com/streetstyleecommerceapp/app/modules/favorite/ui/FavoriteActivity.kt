package com.streetstyleecommerceapp.app.modules.favorite.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.streetstyleecommerceapp.app.R
import com.streetstyleecommerceapp.app.appcomponents.base.BaseActivity
import com.streetstyleecommerceapp.app.databinding.ActivityFavoriteBinding
import com.streetstyleecommerceapp.app.modules.favorite.`data`.model.FavoriteRowModel
import com.streetstyleecommerceapp.app.modules.favorite.`data`.viewmodel.FavoriteVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class FavoriteActivity : BaseActivity<ActivityFavoriteBinding>(R.layout.activity_favorite) {
  private val viewModel: FavoriteVM by viewModels<FavoriteVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val favoriteAdapter = FavoriteAdapter(viewModel.favoriteList.value?:mutableListOf())
    binding.recyclerFavorite.adapter = favoriteAdapter
    favoriteAdapter.setOnItemClickListener(
    object : FavoriteAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : FavoriteRowModel) {
        onClickRecyclerFavorite(view, position, item)
      }
    }
    )
    viewModel.favoriteList.observe(this) {
      favoriteAdapter.updateData(it)
    }
    binding.favoriteVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerFavorite(
    view: View,
    position: Int,
    item: FavoriteRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "FAVORITE_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, FavoriteActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
