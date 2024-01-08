package com.comforthotelbookingapp.app.modules.cardadded.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseActivity
import com.comforthotelbookingapp.app.databinding.ActivityCardAddedBinding
import com.comforthotelbookingapp.app.modules.cardadded.`data`.model.CardaddedRowModel
import com.comforthotelbookingapp.app.modules.cardadded.`data`.viewmodel.CardAddedVM
import com.comforthotelbookingapp.app.modules.confirmpayment.ui.ConfirmPaymentActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class CardAddedActivity : BaseActivity<ActivityCardAddedBinding>(R.layout.activity_card_added) {
  private val viewModel: CardAddedVM by viewModels<CardAddedVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val cardAddedAdapter = CardAddedAdapter(viewModel.cardAddedList.value?:mutableListOf())
    binding.recyclerCardAdded.adapter = cardAddedAdapter
    cardAddedAdapter.setOnItemClickListener(
    object : CardAddedAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : CardaddedRowModel) {
        onClickRecyclerCardAdded(view, position, item)
      }
    }
    )
    viewModel.cardAddedList.observe(this) {
      cardAddedAdapter.updateData(it)
    }
    binding.cardAddedVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
    binding.btnContinue.setOnClickListener {
      val destIntent = ConfirmPaymentActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerCardAdded(
    view: View,
    position: Int,
    item: CardaddedRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "CARD_ADDED_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, CardAddedActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
