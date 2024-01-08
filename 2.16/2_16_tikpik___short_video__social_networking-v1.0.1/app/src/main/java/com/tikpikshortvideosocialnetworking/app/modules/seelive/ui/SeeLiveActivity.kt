package com.tikpikshortvideosocialnetworking.app.modules.seelive.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivitySeeLiveBinding
import com.tikpikshortvideosocialnetworking.app.modules.seelive.`data`.model.SeeliveRowModel
import com.tikpikshortvideosocialnetworking.app.modules.seelive.`data`.viewmodel.SeeLiveVM
import com.tikpikshortvideosocialnetworking.app.modules.viewers.ui.ViewersBottomsheet
import com.tikpikshortvideosocialnetworking.app.modules.weeklyrankingtabcontainer.ui.WeeklyRankingTabContainerActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SeeLiveActivity : BaseActivity<ActivitySeeLiveBinding>(R.layout.activity_see_live) {
  private val viewModel: SeeLiveVM by viewModels<SeeLiveVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val seeLiveAdapter = SeeLiveAdapter(viewModel.seeLiveList.value?:mutableListOf())
    binding.recyclerSeeLive.adapter = seeLiveAdapter
    seeLiveAdapter.setOnItemClickListener(
    object : SeeLiveAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SeeliveRowModel) {
        onClickRecyclerSeeLive(view, position, item)
      }
    }
    )
    viewModel.seeLiveList.observe(this) {
      seeLiveAdapter.updateData(it)
    }
    binding.seeLiveVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnWeeklyRanking.setOnClickListener {
      val destIntent = WeeklyRankingTabContainerActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btn36K.setOnClickListener {
      val destFragment = ViewersBottomsheet.getInstance(null)
      destFragment.show(this.supportFragmentManager, ViewersBottomsheet.TAG)
    }
  }

  fun onClickRecyclerSeeLive(
    view: View,
    position: Int,
    item: SeeliveRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "SEE_LIVE_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, SeeLiveActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
