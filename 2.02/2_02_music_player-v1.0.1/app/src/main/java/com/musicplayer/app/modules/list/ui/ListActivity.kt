package com.musicplayer.app.modules.list.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.musicplayer.app.R
import com.musicplayer.app.appcomponents.base.BaseActivity
import com.musicplayer.app.databinding.ActivityListBinding
import com.musicplayer.app.modules.artist.ui.ArtistActivity
import com.musicplayer.app.modules.list.`data`.model.ListRowModel
import com.musicplayer.app.modules.list.`data`.viewmodel.ListVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ListActivity : BaseActivity<ActivityListBinding>(R.layout.activity_list) {
  private val viewModel: ListVM by viewModels<ListVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val listAdapter = ListAdapter(viewModel.listList.value?:mutableListOf())
    binding.recyclerList.adapter = listAdapter
    listAdapter.setOnItemClickListener(
    object : ListAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ListRowModel) {
        onClickRecyclerList(view, position, item)
      }
    }
    )
    viewModel.listList.observe(this) {
      listAdapter.updateData(it)
    }
    binding.listVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.txtRenaissance.setOnClickListener {
      val destIntent = ArtistActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerList(
    view: View,
    position: Int,
    item: ListRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "LIST_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ListActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
