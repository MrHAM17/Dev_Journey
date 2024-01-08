package com.streetstyleecommerceapp.app.modules.discover.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.streetstyleecommerceapp.app.R
import com.streetstyleecommerceapp.app.appcomponents.base.BaseActivity
import com.streetstyleecommerceapp.app.databinding.ActivityDiscoverBinding
import com.streetstyleecommerceapp.app.modules.discover.`data`.model.DiscoverRowModel
import com.streetstyleecommerceapp.app.modules.discover.`data`.viewmodel.DiscoverVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class DiscoverActivity : BaseActivity<ActivityDiscoverBinding>(R.layout.activity_discover) {
  private val viewModel: DiscoverVM by viewModels<DiscoverVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val discoverAdapter = DiscoverAdapter(viewModel.discoverList.value?:mutableListOf())
    binding.recyclerDiscover.adapter = discoverAdapter
    discoverAdapter.setOnItemClickListener(
    object : DiscoverAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : DiscoverRowModel) {
        onClickRecyclerDiscover(view, position, item)
      }
    }
    )
    viewModel.discoverList.observe(this) {
      discoverAdapter.updateData(it)
    }
    binding.discoverVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerDiscover(
    view: View,
    position: Int,
    item: DiscoverRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "DISCOVER_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, DiscoverActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
