package com.shopsieecommerceapp.app.modules.mainlanding.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.databinding.RowPriceBinding
import com.shopsieecommerceapp.app.modules.mainlanding.`data`.model.PriceRowModel
import kotlin.Int
import kotlin.collections.List

class PriceAdapter(
  var list: List<PriceRowModel>
) : RecyclerView.Adapter<PriceAdapter.RowPriceVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowPriceVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_price,parent,false)
    return RowPriceVH(view)
  }

  override fun onBindViewHolder(holder: RowPriceVH, position: Int) {
    val priceRowModel = PriceRowModel()
    // TODO uncomment following line after integration with data source
    // val priceRowModel = list[position]
    holder.binding.priceRowModel = priceRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<PriceRowModel>) {
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
      item: PriceRowModel
    ) {
    }
  }

  inner class RowPriceVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowPriceBinding = RowPriceBinding.bind(itemView)
  }
}
