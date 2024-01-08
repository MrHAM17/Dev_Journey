package com.moviestreaming.app.modules.seemorefive.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.base.BaseActivity
import com.moviestreaming.app.databinding.ActivitySeeMoreFiveBinding
import com.moviestreaming.app.modules.detailpageseven.ui.DetailPageSevenActivity
import com.moviestreaming.app.modules.seemorefive.`data`.model.SeemorefiveRowModel
import com.moviestreaming.app.modules.seemorefive.`data`.viewmodel.SeeMoreFiveVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SeeMoreFiveActivity :
    BaseActivity<ActivitySeeMoreFiveBinding>(R.layout.activity_see_more_five) {
  private val viewModel: SeeMoreFiveVM by viewModels<SeeMoreFiveVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val seeMoreFiveAdapter =
    SeeMoreFiveAdapter(viewModel.seeMoreFiveList.value?:mutableListOf())
    binding.recyclerSeeMoreFive.adapter = seeMoreFiveAdapter
    seeMoreFiveAdapter.setOnItemClickListener(
    object : SeeMoreFiveAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SeemorefiveRowModel) {
        onClickRecyclerSeeMoreFive(view, position, item)
      }
    }
    )
    viewModel.seeMoreFiveList.observe(this) {
      seeMoreFiveAdapter.updateData(it)
    }
    binding.seeMoreFiveVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerSeeMoreFive(
    view: View,
    position: Int,
    item: SeemorefiveRowModel
  ): Unit {
    when(view.id) {
      R.id.linearMovieCard -> {
        onClickRecyclerSeeMoreFiveLinearMovieCard(view, position, item)
      }
    }
  }

  fun onClickRecyclerSeeMoreFiveLinearMovieCard(
    view: View,
    position: Int,
    item: SeemorefiveRowModel
  ): Unit {
    /** TODO As per your logic, Add constant type for item click.*/
    when(0) {
      0 -> {
        val destIntent = DetailPageSevenActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      1 -> {
        val destIntent = DetailPageSevenActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      2 -> {
        val destIntent = DetailPageSevenActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      3 -> {
        val destIntent = DetailPageSevenActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      4 -> {
        val destIntent = DetailPageSevenActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      5 -> {
        val destIntent = DetailPageSevenActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }
  }

  companion object {
    const val TAG: String = "SEE_MORE_FIVE_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, SeeMoreFiveActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
