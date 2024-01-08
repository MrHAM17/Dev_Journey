package com.moviestreaming.app.modules.exploreseven.ui

import android.view.View
import androidx.activity.viewModels
import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.base.BaseActivity
import com.moviestreaming.app.databinding.ActivityExploreSevenBinding
import com.moviestreaming.app.modules.detailpageseven.ui.DetailPageSevenActivity
import com.moviestreaming.app.modules.exploreseven.`data`.model.IoRowModel
import com.moviestreaming.app.modules.exploreseven.`data`.model.Specials7RowModel
import com.moviestreaming.app.modules.exploreseven.`data`.model.TurnerhoochRowModel
import com.moviestreaming.app.modules.exploreseven.`data`.viewmodel.ExploreSevenVM
import com.moviestreaming.app.modules.seemorefive.ui.SeeMoreFiveActivity
import com.moviestreaming.app.modules.seemoresix.ui.SeeMoreSixActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ExploreSevenActivity :
    BaseActivity<ActivityExploreSevenBinding>(R.layout.activity_explore_seven) {
  private val viewModel: ExploreSevenVM by viewModels<ExploreSevenVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val specialsAdapter = SpecialsAdapter(viewModel.specialsList.value?:mutableListOf())
    binding.recyclerSpecials.adapter = specialsAdapter
    specialsAdapter.setOnItemClickListener(
    object : SpecialsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Specials7RowModel) {
        onClickRecyclerSpecials(view, position, item)
      }
    }
    )
    viewModel.specialsList.observe(this) {
      specialsAdapter.updateData(it)
    }
    val iOAdapter = IOAdapter(viewModel.iOList.value?:mutableListOf())
    binding.recyclerIO.adapter = iOAdapter
    iOAdapter.setOnItemClickListener(
    object : IOAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : IoRowModel) {
        onClickRecyclerIO(view, position, item)
      }
    }
    )
    viewModel.iOList.observe(this) {
      iOAdapter.updateData(it)
    }
    val turnerHoochAdapter =
    TurnerHoochAdapter(viewModel.turnerHoochList.value?:mutableListOf())
    binding.recyclerTurnerHooch.adapter = turnerHoochAdapter
    turnerHoochAdapter.setOnItemClickListener(
    object : TurnerHoochAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : TurnerhoochRowModel) {
        onClickRecyclerTurnerHooch(view, position, item)
      }
    }
    )
    viewModel.turnerHoochList.observe(this) {
      turnerHoochAdapter.updateData(it)
    }
    binding.exploreSevenVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerSpecials(
    view: View,
    position: Int,
    item: Specials7RowModel
  ): Unit {
    when(view.id) {
      R.id.imageDrama ->  {
        onClickRecyclerSpecialsImageDrama(view, position, item)
      }
    }
  }

  fun onClickRecyclerIO(
    view: View,
    position: Int,
    item: IoRowModel
  ): Unit {
    when(view.id) {
      R.id.linearMovieCard ->  {
        onClickRecyclerIOLinearMovieCard(view, position, item)
      }
    }
  }

  fun onClickRecyclerTurnerHooch(
    view: View,
    position: Int,
    item: TurnerhoochRowModel
  ): Unit {
    when(view.id) {
      R.id.linearMovieCard ->  {
        onClickRecyclerTurnerHoochLinearMovieCard(view, position, item)
      }
    }
  }

  fun onClickRecyclerSpecialsImageDrama(
    view: View,
    position: Int,
    item: Specials7RowModel
  ) {
    /** TODO As per your logic, Add constant type for item click.*/
    when(0) {
      0 ->  {
        val destIntent = SeeMoreFiveActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      1 ->  {
        val destIntent = SeeMoreSixActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }
  }

  fun onClickRecyclerIOLinearMovieCard(
    view: View,
    position: Int,
    item: IoRowModel
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
    }
  }

  fun onClickRecyclerTurnerHoochLinearMovieCard(
    view: View,
    position: Int,
    item: TurnerhoochRowModel
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
    }
  }

  companion object {
    const val TAG: String = "EXPLORE_SEVEN_ACTIVITY"

  }
}
