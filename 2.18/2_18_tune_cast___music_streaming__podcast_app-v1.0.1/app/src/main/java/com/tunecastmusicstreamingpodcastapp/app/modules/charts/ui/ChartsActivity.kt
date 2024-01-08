package com.tunecastmusicstreamingpodcastapp.app.modules.charts.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityChartsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.charts.`data`.model.Topalbumsglobal1RowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.charts.`data`.model.TopalbumsglobalRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.charts.`data`.viewmodel.ChartsVM
import com.tunecastmusicstreamingpodcastapp.app.modules.topalbumsglobal.ui.TopAlbumsGlobalActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ChartsActivity : BaseActivity<ActivityChartsBinding>(R.layout.activity_charts) {
  private val viewModel: ChartsVM by viewModels<ChartsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val tOPALBUMSGLOBALAdapter =
    TOPALBUMSGLOBALAdapter(viewModel.tOPALBUMSGLOBALList.value?:mutableListOf())
    binding.recyclerTOPALBUMSGLOBAL.adapter = tOPALBUMSGLOBALAdapter
    tOPALBUMSGLOBALAdapter.setOnItemClickListener(
    object : TOPALBUMSGLOBALAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : TopalbumsglobalRowModel) {
        onClickRecyclerTOPALBUMSGLOBAL(view, position, item)
      }
    }
    )
    viewModel.tOPALBUMSGLOBALList.observe(this) {
      tOPALBUMSGLOBALAdapter.updateData(it)
    }
    val tOPALBUMSGLOBAL1Adapter =
    TOPALBUMSGLOBAL1Adapter(viewModel.tOPALBUMSGLOBAL1List.value?:mutableListOf())
    binding.recyclerTOPALBUMSGLOBAL1.adapter = tOPALBUMSGLOBAL1Adapter
    tOPALBUMSGLOBAL1Adapter.setOnItemClickListener(
    object : TOPALBUMSGLOBAL1Adapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Topalbumsglobal1RowModel) {
        onClickRecyclerTOPALBUMSGLOBAL1(view, position, item)
      }
    }
    )
    viewModel.tOPALBUMSGLOBAL1List.observe(this) {
      tOPALBUMSGLOBAL1Adapter.updateData(it)
    }
    binding.chartsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerTOPALBUMSGLOBAL(
    view: View,
    position: Int,
    item: TopalbumsglobalRowModel
  ): Unit {
    when(view.id) {
      R.id.linearCard -> {
        val destIntent = TopAlbumsGlobalActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }
  }

  fun onClickRecyclerTOPALBUMSGLOBAL1(
    view: View,
    position: Int,
    item: Topalbumsglobal1RowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "CHARTS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ChartsActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
