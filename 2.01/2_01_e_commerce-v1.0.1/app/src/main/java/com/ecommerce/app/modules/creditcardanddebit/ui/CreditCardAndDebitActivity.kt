package com.ecommerce.app.modules.creditcardanddebit.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseActivity
import com.ecommerce.app.databinding.ActivityCreditCardAndDebitBinding
import com.ecommerce.app.modules.addcard.ui.AddCardActivity
import com.ecommerce.app.modules.creditcardanddebit.`data`.model.CardsRowModel
import com.ecommerce.app.modules.creditcardanddebit.`data`.viewmodel.CreditCardAndDebitVM
import com.ecommerce.app.modules.lailyfafebrinacard.ui.LailyfaFebrinaCardActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class CreditCardAndDebitActivity :
    BaseActivity<ActivityCreditCardAndDebitBinding>(R.layout.activity_credit_card_and_debit) {
  private val viewModel: CreditCardAndDebitVM by viewModels<CreditCardAndDebitVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val cardsAdapter = CardsAdapter(viewModel.cardsList.value?:mutableListOf())
    binding.recyclerCards.adapter = cardsAdapter
    cardsAdapter.setOnItemClickListener(
    object : CardsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : CardsRowModel) {
        onClickRecyclerCards(view, position, item)
      }
    }
    )
    viewModel.cardsList.observe(this) {
      cardsAdapter.updateData(it)
    }
    binding.creditCardAndDebitVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
    binding.btnAddCard.setOnClickListener {
      val destIntent = AddCardActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerCards(
    view: View,
    position: Int,
    item: CardsRowModel
  ): Unit {
    when(view.id) {
      R.id.linearCreditCardItem -> {
        val destIntent = LailyfaFebrinaCardActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }
  }

  companion object {
    const val TAG: String = "CREDIT_CARD_AND_DEBIT_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, CreditCardAndDebitActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
