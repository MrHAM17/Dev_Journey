package com.banksydigitalbanking.app.modules.cards.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.base.BaseFragment
import com.banksydigitalbanking.app.databinding.FragmentCardsBinding
import com.banksydigitalbanking.app.modules.addcardone.ui.AddCardOneActivity
import com.banksydigitalbanking.app.modules.carddetails.ui.CardDetailsActivity
import com.banksydigitalbanking.app.modules.cards.`data`.model.CardsRowModel
import com.banksydigitalbanking.app.modules.cards.`data`.viewmodel.CardsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class CardsFragment : BaseFragment<FragmentCardsBinding>(R.layout.fragment_cards) {
  private val viewModel: CardsVM by viewModels<CardsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val cardsAdapter = CardsAdapter(viewModel.cardsList.value?:mutableListOf())
    binding.recyclerCards.adapter = cardsAdapter
    cardsAdapter.setOnItemClickListener(
    object : CardsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : CardsRowModel) {
        onClickRecyclerCards(view, position, item)
      }
    }
    )
    viewModel.cardsList.observe(requireActivity()) {
      cardsAdapter.updateData(it)
    }
    binding.cardsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnPlus.setOnClickListener {
      val destIntent = AddCardOneActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  fun onClickRecyclerCards(
    view: View,
    position: Int,
    item: CardsRowModel
  ): Unit {
    when(view.id) {
      R.id.linearCard -> {
        onClickRecyclerCardsLinearCard(view, position, item)
      }
    }
  }

  fun onClickRecyclerCardsLinearCard(
    view: View,
    position: Int,
    item: CardsRowModel
  ): Unit {
    /** TODO As per your logic, Add constant type for item click.*/
    when(0) {
      0 -> {
        val destIntent = CardDetailsActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
      1 -> {
        val destIntent = CardDetailsActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
    }
  }

  companion object {
    const val TAG: String = "CARDS_FRAGMENT"


    fun getInstance(bundle: Bundle?): CardsFragment {
      val fragment = CardsFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
