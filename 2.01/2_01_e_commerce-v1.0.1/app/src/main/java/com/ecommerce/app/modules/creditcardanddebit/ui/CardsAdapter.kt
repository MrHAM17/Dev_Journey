package com.ecommerce.app.modules.creditcardanddebit.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.ecommerce.app.R
import com.ecommerce.app.databinding.RowCardsBinding
import com.ecommerce.app.modules.creditcardanddebit.`data`.model.CardsRowModel
import kotlin.Int
import kotlin.collections.List

class CardsAdapter(
  var list: List<CardsRowModel>
) : RecyclerView.Adapter<CardsAdapter.RowCardsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowCardsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_cards,parent,false)
    return RowCardsVH(view)
  }

  override fun onBindViewHolder(holder: RowCardsVH, position: Int) {
    val cardsRowModel = CardsRowModel()
    // TODO uncomment following line after integration with data source
    // val cardsRowModel = list[position]
    holder.binding.cardsRowModel = cardsRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<CardsRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: CardsRowModel
    ) {
    }
  }

  inner class RowCardsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowCardsBinding = RowCardsBinding.bind(itemView)
    init {
      binding.linearCreditCardItem.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, CardsRowModel())
      }
    }
  }
}
