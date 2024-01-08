package com.moviestreaming.app.modules.seemoresix.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.base.BaseActivity
import com.moviestreaming.app.databinding.ActivitySeeMoreSixBinding
import com.moviestreaming.app.modules.detailpageseven.ui.DetailPageSevenActivity
import com.moviestreaming.app.modules.seemoresix.`data`.model.SeemoresixRowModel
import com.moviestreaming.app.modules.seemoresix.`data`.viewmodel.SeeMoreSixVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SeeMoreSixActivity : BaseActivity<ActivitySeeMoreSixBinding>(R.layout.activity_see_more_six) {
  private val viewModel: SeeMoreSixVM by viewModels<SeeMoreSixVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val seeMoreSixAdapter = SeeMoreSixAdapter(viewModel.seeMoreSixList.value?:mutableListOf())
    binding.recyclerSeeMoreSix.adapter = seeMoreSixAdapter
    seeMoreSixAdapter.setOnItemClickListener(
    object : SeeMoreSixAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SeemoresixRowModel) {
        onClickRecyclerSeeMoreSix(view, position, item)
      }
    }
    )
    viewModel.seeMoreSixList.observe(this) {
      seeMoreSixAdapter.updateData(it)
    }
    binding.seeMoreSixVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerSeeMoreSix(
    view: View,
    position: Int,
    item: SeemoresixRowModel
  ): Unit {
    when(view.id) {
      R.id.linearMovieCard ->  {
        onClickRecyclerSeeMoreSixLinearMovieCard(view, position, item)
      }
    }
  }

  fun onClickRecyclerSeeMoreSixLinearMovieCard(
    view: View,
    position: Int,
    item: SeemoresixRowModel
  ) {
    /** TODO As per your logic, Add constant type for item click.*/
    when(0) {
      0 ->  {
        val destIntent = DetailPageSevenActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      1 ->  {
        val destIntent = DetailPageSevenActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      2 ->  {
        val destIntent = DetailPageSevenActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      3 ->  {
        val destIntent = DetailPageSevenActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      4 ->  {
        val destIntent = DetailPageSevenActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      5 ->  {
        val destIntent = DetailPageSevenActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      6 ->  {
        val destIntent = DetailPageSevenActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }
  }

  companion object {
    const val TAG: String = "SEE_MORE_SIX_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, SeeMoreSixActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
