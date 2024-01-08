package com.shopsieecommerceapp.app.modules.mainlanding.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseActivity
import com.shopsieecommerceapp.app.databinding.ActivityMainLandingBinding
import com.shopsieecommerceapp.app.modules.mainlanding.`data`.model.FrameRowModel
import com.shopsieecommerceapp.app.modules.mainlanding.`data`.model.MainlandingRowModel
import com.shopsieecommerceapp.app.modules.mainlanding.`data`.model.PriceRowModel
import com.shopsieecommerceapp.app.modules.mainlanding.`data`.model.SpinnerChevronrightFourModel
import com.shopsieecommerceapp.app.modules.mainlanding.`data`.model.SpinnerChevronrightThreeModel
import com.shopsieecommerceapp.app.modules.mainlanding.`data`.model.SpinnerChevronrightTwoModel
import com.shopsieecommerceapp.app.modules.mainlanding.`data`.model.ThirtytwoRowModel
import com.shopsieecommerceapp.app.modules.mainlanding.`data`.viewmodel.MainLandingVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class MainLandingActivity : BaseActivity<ActivityMainLandingBinding>(R.layout.activity_main_landing)
    {
  private val viewModel: MainLandingVM by viewModels<MainLandingVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    viewModel.spinnerChevronrightTwoList.value = mutableListOf(
    SpinnerChevronrightTwoModel("Item1"),
    SpinnerChevronrightTwoModel("Item2"),
    SpinnerChevronrightTwoModel("Item3"),
    SpinnerChevronrightTwoModel("Item4"),
    SpinnerChevronrightTwoModel("Item5")
    )
    val spinnerChevronrightTwoAdapter =
    SpinnerChevronrightTwoAdapter(this,R.layout.spinner_item,viewModel.spinnerChevronrightTwoList.value?:
    mutableListOf())
    binding.spinnerChevronrightTwo.adapter = spinnerChevronrightTwoAdapter
    viewModel.spinnerChevronrightThreeList.value = mutableListOf(
    SpinnerChevronrightThreeModel("Item1"),
    SpinnerChevronrightThreeModel("Item2"),
    SpinnerChevronrightThreeModel("Item3"),
    SpinnerChevronrightThreeModel("Item4"),
    SpinnerChevronrightThreeModel("Item5")
    )
    val spinnerChevronrightThreeAdapter =
    SpinnerChevronrightThreeAdapter(this,R.layout.spinner_item,viewModel.spinnerChevronrightThreeList.value?:
    mutableListOf())
    binding.spinnerChevronrightThree.adapter = spinnerChevronrightThreeAdapter
    viewModel.spinnerChevronrightFourList.value = mutableListOf(
    SpinnerChevronrightFourModel("Item1"),
    SpinnerChevronrightFourModel("Item2"),
    SpinnerChevronrightFourModel("Item3"),
    SpinnerChevronrightFourModel("Item4"),
    SpinnerChevronrightFourModel("Item5")
    )
    val spinnerChevronrightFourAdapter =
    SpinnerChevronrightFourAdapter(this,R.layout.spinner_item,viewModel.spinnerChevronrightFourList.value?:
    mutableListOf())
    binding.spinnerChevronrightFour.adapter = spinnerChevronrightFourAdapter
    val frameAdapter = FrameAdapter(viewModel.frameList.value?:mutableListOf())
    binding.recyclerFrame.adapter = frameAdapter
    frameAdapter.setOnItemClickListener(
    object : FrameAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : FrameRowModel) {
        onClickRecyclerFrame(view, position, item)
      }
    }
    )
    viewModel.frameList.observe(this) {
      frameAdapter.updateData(it)
    }
    val thirtyTwoAdapter = ThirtyTwoAdapter(viewModel.thirtyTwoList.value?:mutableListOf())
    binding.recyclerThirtyTwo.adapter = thirtyTwoAdapter
    thirtyTwoAdapter.setOnItemClickListener(
    object : ThirtyTwoAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ThirtytwoRowModel) {
        onClickRecyclerThirtyTwo(view, position, item)
      }
    }
    )
    viewModel.thirtyTwoList.observe(this) {
      thirtyTwoAdapter.updateData(it)
    }
    val mainLandingAdapter =
    MainLandingAdapter(viewModel.mainLandingList.value?:mutableListOf())
    binding.recyclerMainLanding.adapter = mainLandingAdapter
    mainLandingAdapter.setOnItemClickListener(
    object : MainLandingAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : MainlandingRowModel) {
        onClickRecyclerMainLanding(view, position, item)
      }
    }
    )
    viewModel.mainLandingList.observe(this) {
      mainLandingAdapter.updateData(it)
    }
    val priceAdapter = PriceAdapter(viewModel.priceList.value?:mutableListOf())
    binding.recyclerPrice.adapter = priceAdapter
    priceAdapter.setOnItemClickListener(
    object : PriceAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : PriceRowModel) {
        onClickRecyclerPrice(view, position, item)
      }
    }
    )
    viewModel.priceList.observe(this) {
      priceAdapter.updateData(it)
    }
    binding.mainLandingVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerFrame(
    view: View,
    position: Int,
    item: FrameRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerThirtyTwo(
    view: View,
    position: Int,
    item: ThirtytwoRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerMainLanding(
    view: View,
    position: Int,
    item: MainlandingRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerPrice(
    view: View,
    position: Int,
    item: PriceRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "MAIN_LANDING_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, MainLandingActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
