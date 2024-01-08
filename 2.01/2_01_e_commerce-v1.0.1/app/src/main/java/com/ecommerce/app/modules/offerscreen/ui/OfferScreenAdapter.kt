package com.ecommerce.app.modules.offerscreen.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.ecommerce.app.R
import com.ecommerce.app.databinding.RowOfferscreenBinding
import com.ecommerce.app.modules.offerscreen.`data`.model.OfferscreenRowModel
import kotlin.Int
import kotlin.collections.List

class OfferScreenAdapter(
  var list: List<OfferscreenRowModel>
) : RecyclerView.Adapter<OfferScreenAdapter.RowOfferscreenVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowOfferscreenVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_offerscreen,parent,false)
    return RowOfferscreenVH(view)
  }

  override fun onBindViewHolder(holder: RowOfferscreenVH, position: Int) {
    val offerscreenRowModel = OfferscreenRowModel()
    // TODO uncomment following line after integration with data source
    // val offerscreenRowModel = list[position]
    holder.binding.offerscreenRowModel = offerscreenRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<OfferscreenRowModel>) {
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
      item: OfferscreenRowModel
    ) {
    }
  }

  inner class RowOfferscreenVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowOfferscreenBinding = RowOfferscreenBinding.bind(itemView)
  }
}
