package com.housitbuyrentsellproperty.app.modules.home.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowPromotionbannerBinding
import com.housitbuyrentsellproperty.app.modules.home.`data`.model.PromotionbannerRowModel
import kotlin.Int
import kotlin.collections.List

class PromotionBannerAdapter(
  var list: List<PromotionbannerRowModel>
) : RecyclerView.Adapter<PromotionBannerAdapter.RowPromotionbannerVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowPromotionbannerVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_promotionbanner,parent,false)
    return RowPromotionbannerVH(view)
  }

  override fun onBindViewHolder(holder: RowPromotionbannerVH, position: Int) {
    val promotionbannerRowModel = PromotionbannerRowModel()
    // TODO uncomment following line after integration with data source
    // val promotionbannerRowModel = list[position]
    holder.binding.promotionbannerRowModel = promotionbannerRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<PromotionbannerRowModel>) {
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
      item: PromotionbannerRowModel
    ) {
    }
  }

  inner class RowPromotionbannerVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowPromotionbannerBinding = RowPromotionbannerBinding.bind(itemView)
    init {
      binding.frameItemPromotion.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, PromotionbannerRowModel())
      }
    }
  }
}
